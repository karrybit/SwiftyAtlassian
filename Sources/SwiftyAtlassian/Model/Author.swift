import Foundation

public extension Model {
    struct Author: Decodable {
        public let link: URL
        public let name: String
        public let displayName: String
        public let isActive: Bool
    }
}

public extension Model.Author {
    enum CodingKeys: String, CodingKey {
        case name, displayName
        case link = "self"
        case isActive = "active"
    }
}
