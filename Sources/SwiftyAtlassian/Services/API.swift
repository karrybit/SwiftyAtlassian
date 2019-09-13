import Foundation

public class API: Network {
    public let config: Config
    public init() {
        self.config = ConfigLoader.loadConfig()
    }
}

public extension API {
    
    typealias Body = [String: Any]

    var header: [String: String] {
        var header: [String: String] = [:]
        /// Basic authentication
        header["Content-Type"] = "application/json"
        guard let credentialData = "\(config.name):\(config.password)".data(using: String.Encoding.utf8) else {
            fatalError("⛔️ user credential data is not found.")
        }
        let credential = credentialData.base64EncodedString(options: [])
        header["Authorization"] = "Basic \(credential)"
        return header
    }
    
    func get(url: URL, body: Body) -> Result<Data, Error> {
        return network(url: url, method: .get, header: header, body: body)
    }

    func post(url: URL, body: Body) -> Result<Data, Error> {
        return network(url: url, method: .post, header: header, body: body)
    }
    
    func put(url: URL, body: Body) -> Result<Data, Error> {
        return network(url: url, method: .put, header: header, body: body)
    }
    
    func delete(url: URL, body: Body) -> Result<Data, Error> {
        return network(url: url, method: .delete, header: header, body: body)
    }

}
