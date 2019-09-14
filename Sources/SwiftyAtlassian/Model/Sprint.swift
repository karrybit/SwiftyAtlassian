import Foundation

public extension Model {
    struct Sprint: Decodable {
        public enum State: String, Decodable {
            case future, closed
        }
        public let id: Int
        public let link: URL
        public let state: State
        public let name: String
        public let startDate: Date?
        public let endDate: Date?
        public let completeDate: Date?
        public let originBoardID: Int?
        public let goal: String?
    }
}

public extension Model.Sprint {
    enum CodingKeys: String, CodingKey {
        case id, state, name, startDate, endDate, completeDate, goal
        case link = "self"
        case originBoardID = "originBoardId"
    }
}
