import Foundation

public extension Model {
    struct Epic: Decodable {
        public let id: Int
        public let link: String
        public let name: String
        public let summary: String
        public let color: String
        public let isDone: Bool
    }
}

public extension Model.Epic {
    enum CodingKeys: String, CodingKey {
        case id, name, summary, color
        case link = "self"
        case isDone = "done"
    }
    
    enum ColorKeys: String, CodingKey {
        case color = "key"
    }
}
