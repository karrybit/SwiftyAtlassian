import Foundation

public extension Model {
    struct Comment: Decodable {
        public let link: URL
        public let id: Int
        public let author: Model.Author
        public let body: String
        public let updateAuthor: Model.Author
        public let createdDate: Date
        public let updatedDate: Date
        public let visibility: Model.Visibility
    }
}

public extension Model.Comment {
    enum CodingKeys: String, CodingKey {
        case id, author, body, updateAuthor, visibility
        case link = "self"
        case createdDate = "created"
        case updatedDate = "updated"
    }
}
