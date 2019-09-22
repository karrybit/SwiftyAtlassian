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

    private static var defaultDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        formatter.timeZone = TimeZone(identifier: "UTC")
        formatter.locale = Locale(identifier: "en_US_POSIX")
        return formatter
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
