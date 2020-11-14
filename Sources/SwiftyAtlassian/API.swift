import Foundation

public enum SwiftyAtlassianMethod {
    case get, post, put, delete
}

private extension SwiftyAtlassianMethod {
    var string: String {
        switch self {
        case .get:
            return "GET"
        case .post:
            return "POST"
        case .put:
            return "PUT"
        case .delete:
            return "DELETE"
        }
    }
}

protocol API {
    static var path: String { get }
}

extension API {
    typealias Body = [String: Any]
    typealias Header = [String: String]

    static func urlString() -> String? {
        guard let config = _config else {
            return nil
        }
        return config.baseUrlString + path
    }
    
    static func get(url: URL, header: Header, body: Body) -> Result<Data, Error> {
        return request(method: .get, url: url, header: header, body: body)
    }

    static func post(url: URL, header: Header, body: Body) -> Result<Data, Error> {
        return request(method: .post, url: url, header: header, body: body)
    }

    static func put(url: URL, header: Header, body: Body) -> Result<Data, Error> {
        return request(method: .put, url: url, header: header, body: body)
    }

    static func delete(url: URL, header: Header, body: Body) -> Result<Data, Error> {
        return request(method: .delete, url: url, header: header, body: body)
    }

    static func decode<T>(_ result: Result<Data, Error>, customDateFormatter: DateFormatter? = nil) -> Result<T, Error> where T: Decodable {
        switch result {
        case .success(let data):
            do {
                let dateFormatter: DateFormatter
                if case let .some(customDateFormatter) = customDateFormatter {
                    dateFormatter = customDateFormatter
                } else {
                    dateFormatter = DateFormatter()
                    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
                    dateFormatter.timeZone = TimeZone(identifier: "UTC")
                    dateFormatter.locale = Locale(identifier: "en_US_POSIX")
                }

                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .formatted(dateFormatter)
                let response = try decoder.decode(T.self, from: data)
                return .success(response)

            } catch {
                // TODO: クライアントに伝える用のError定義を返却する（parse error とか言われてもわからん）
                return .failure(error)
            }
        case .failure(let error):
            return .failure(error)
        }
    }

    static func decode(_ result: Result<Data, Error>) -> Result<(), Error> {
        switch result {
        case .success(_):
            return .success(())
        case .failure(let error):
            return .failure(error)
        }
    }
}

private extension API {
    static func authHeader() -> Header {
        guard let config = _config else {
            return [:]
        }
        
        var header: Header = [:]
        
        /// Basic authentication
        header["Content-Type"] = "application/json"
        guard let credentialData = "\(config.name):\(config.password)".data(using: String.Encoding.utf8) else {
            fatalError("⛔️ user credential data is not found.")
        }
        let credential = credentialData.base64EncodedString(options: [])
        header["Authorization"] = "Basic \(credential)"
        
        return header
    }
    
    static func request(method: SwiftyAtlassianMethod, url: URL, header: Header = [:], body: Body = [:]) -> Result<Data, Error> {
        let semaphore = DispatchSemaphore(value: 0)
        var request = URLRequest(url: url)

        request.httpMethod = method.string
        var _header = authHeader()
        _header.merge(header) { (current, _) in current }
        request.allHTTPHeaderFields = _header
        request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: [])

        var result = Result<Data, Error>.failure(URLError(.timedOut))

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            defer { semaphore.signal() }

            guard let statusCode = (response as? HTTPURLResponse)?.statusCode else {
                print("⛔️ not found status code")
                return
            }

            if (200...203).contains(statusCode), let data = data {
                print("✅ \(String(describing: response))")
                result = .success(data)

            } else {
                print("🚫 statusCode: \(statusCode)")
                if let error = error {
                    print("🚨 error: \(error)")
                    result = .failure(error)
                }
            }
        }

        task.resume()
        semaphore.wait()

        return result
    }
}
