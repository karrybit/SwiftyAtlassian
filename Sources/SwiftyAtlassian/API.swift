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

let defaultDateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
    formatter.timeZone = TimeZone(identifier: "UTC")
    formatter.locale = Locale(identifier: "en_US_POSIX")
    return formatter
}()

public protocol API {
    static var path: String { get }
}

public extension API {
    static var path: String {
        return ""
    }
    
    typealias Body = [String: Any]
    typealias Header = [String: String]

    static func request(config: Config, url: URL, method: SwiftyAtlassianMethod, header: Header = [:], body: Body = [:]) -> Result<Data, Error> {
        var _header: Header = [:]
        /// Basic authentication
        _header["Content-Type"] = "application/json"
        guard let credentialData = "\(config.name):\(config.password)".data(using: String.Encoding.utf8) else {
            fatalError("⛔️ user credential data is not found.")
        }
        let credential = credentialData.base64EncodedString(options: [])
        _header["Authorization"] = "Basic \(credential)"
        
        _header.merge(header) { (_, new) in return new }

        return _request(url: url, method: method, header: _header, body: body)
    }

    static func _request(url: URL, method: SwiftyAtlassianMethod, header: Header, body: Body) -> Result<Data, Error> {
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
    
    static func decode<T>(_ result: Result<Data, Error>, customDateFormatter: DateFormatter? = nil) -> Result<T, Error> where T: Decodable {
        switch result {
        case .success(let data):
            do {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .formatted(customDateFormatter ?? defaultDateFormatter)
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
