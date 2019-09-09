//
//  Network.swift
//  SwiftyAtlassian
//
//  Created by kota-otsu on 2019/07/18.
//

import Foundation

private extension SwiftyAtlassianMethod {
    var string: String {
        switch self {
        case .get:
            return "GET"
        case .post:
            return "POST"
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
}

public extension Network {
    func network(url: URL, method: SwiftyAtlassianMethod, header: [String: String]?, body: [String: Any]) -> Result<(), Error> {
        
        guard let header = header else {
            /// TODO: ヘッダー生成エラーとしてふさわしいものを探す
            return .failure(URLError(.cannotWriteToFile))
        }
        
        let semaphore = DispatchSemaphore(value: 0)
        var request = URLRequest(url: url)
        
        request.allHTTPHeaderFields = header
        request.httpMethod = method.string
        request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: [])
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            defer { semaphore.signal() }
            
            guard let statusCode = (response as? HTTPURLResponse)?.statusCode else {
                print("⛔️ not found status code")
                return
            }
            
            if (200...203).contains(statusCode) {
                print("✅ \(String(describing: response))")
            } else {
                print("🚫 statusCode: \(statusCode)")
                if let error = error {
                    print("🚨 error: \(error)")
                }
            }
        }
        
        task.resume()
        semaphore.wait()
        
        return .success(())
    }
}
