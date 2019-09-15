import Foundation

public extension Model {
    struct ProjectCategory: Decodable {
        public let link: URL
        public let id: Int
        public let name: String
        public let description: String
    }
}

public extension Model.ProjectCategory {
    enum CodingKeys: String, CodingKey {
        case id, name, description
        case link = "self"
    }
}
