import Foundation

public extension Model {
    struct Board: Decodable {
        public enum `Type`: String, Decodable {
            case scrum, kanban
        }
        public let id: Int
        public let link: URL
        public let name: String
        public let type: Type
    }
}

public extension Model.Board {
    enum CodingKeys: String, CodingKey {
        case id, name, type
        case link = "self"
    }
}
