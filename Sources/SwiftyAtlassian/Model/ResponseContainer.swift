import Foundation

public extension Model {
    struct ResponseContainer<T: Decodable>: Decodable {
        struct Header: Decodable {
            public let expand: String?
            public let maxResults: Int
            public let startAt: Int
            public let total: Int
            public let isLast: Bool?
        }
        
        let header: Header
        let value: T
    }
}

public extension Model.ResponseContainer {
    enum CodingKeys: String, CodingKey {
        case expand, maxResults, startAt, total, isLast
        case value = "values"
    }
    
    init(from decoder: Decoder) throws {
        header = try Header(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        value = try container.decode(T.self, forKey: .value)
    }
}
