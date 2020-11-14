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

public protocol API {
    associatedtype ServiceType: ServiceProtocol
}

public extension API {
    static func path(_ config: Config) -> Result<URL, Error> {
        guard let url = URL(string: config.baseUrlString + ServiceType.servicePath + endpoint) else {
            return .failure(URLError(.badURL))
        }
        return .success(url)
    }

    typealias Body = [String: Any]
    typealias Header = [String: String]

    static func request(_ method: SwiftyAtlassianMethod, to url: URL, header: Header = [:], body: Body = [:], with config: Config) -> Result<Data, Error> {
        var _header = authHeader(config: config)
        _header.merge(header){ (current, _) in return current }
        return _request(method: method, url: url, header: _header, body: body)
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
    static var endpoint: String {
        return ""
    }

    static func authHeader(config: Config) -> Header {
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
    
    static func _request(method: SwiftyAtlassianMethod, url: URL, header: Header, body: Body) -> Result<Data, Error> {
        let semaphore = DispatchSemaphore(value: 0)
        var request = URLRequest(url: url)

        request.allHTTPHeaderFields = header
        request.httpMethod = method.string
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
