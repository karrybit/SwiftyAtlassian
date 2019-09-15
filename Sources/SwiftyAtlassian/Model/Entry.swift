import Foundation

public extension Model {
    struct Entry: Decodable {
        public let issueID: Int
        public let issueKey: String
        public let status: Int
    }
}

public extension Model.Entry {
    enum CodingKeys: String, CodingKey {
        case issueID = "issueId"
        case issueKey, status
    }
}
