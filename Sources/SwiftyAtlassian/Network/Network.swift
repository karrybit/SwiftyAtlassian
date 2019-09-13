import Foundation

private extension SwiftyAtlassianMethod {
    var string: String {
        switch self {
        case .get:
            return "GET"
        case .post:
            return "POST"
        case .put:
            return "PUT"
        }
    }
}

public protocol Network: class {
    var path: String { get }
}

public extension Network {
    var path: String {
        return ""
    }
    
    func network(url: URL, method: SwiftyAtlassianMethod, header: [String: String], body: [String: Any]) -> Result<Data, Error> {
        
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
