import Foundation

public extension Model {
    struct Version: Decodable {
        public let link: URL
        public let id: Int
        public let projectID: Int
        public let name: String
        public let description: String
        public let isArchived: Bool
        public let isReleased: Bool
        public let releaseDate: Date?
    }
}

public extension Model.Version {
    enum CodingKeys: String, CodingKey {
        case id, name, description, releaseDate
        case link = "self"
        case projectID = "projectId"
        case isArchived = "archived"
        case isReleased = "released"
    }
}
