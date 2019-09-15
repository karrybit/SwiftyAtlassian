import Foundation

public extension Model {
    struct Project: Decodable {
        public let link: URL
        public let id: Int
        public let key: String
        public let name: String
        public let avatarURLs: Model.AvatarURL
        public let projectCategory: Model.ProjectCategory
    }
}

public extension Model.Project {
    enum CodingKeys: String, CodingKey {
        case id, key, name, projectCategory
        case link = "self"
        case avatarURLs = "avatarUrls"
    }
}
