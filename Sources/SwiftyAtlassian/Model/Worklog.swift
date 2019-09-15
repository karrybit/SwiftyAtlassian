import Foundation

public extension Model {
    struct Worklog: Decodable {
        public let link: URL
        public let author: Model.Author
        public let updateAuthor: Model.Author
        public let comment: String
        public let updatedDate: Date
        public let visibility: Model.Visibility
        public let startedDate: Date
        public let timeSpentSeconds: Int
        public let id: Int
        public let issueID: Int
    }
}

public extension Model.Worklog {
    enum CodingKeys: String, CodingKey {
        case author, updateAuthor, comment, visibility, timeSpentSeconds, id
        case link = "self"
        case updatedDate = "updated"
        case startedDate = "started"
        case issueID = "issueId"
    }
}
