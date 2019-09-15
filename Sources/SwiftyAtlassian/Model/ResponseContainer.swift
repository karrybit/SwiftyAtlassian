import Foundation

public extension Model {
    struct ResponseContainer<T: Codable> {
        struct Header {
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
}
