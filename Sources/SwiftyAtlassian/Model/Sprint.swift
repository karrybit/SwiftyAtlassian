import Foundation

public extension Model {
    struct Sprint: Decodable {
        enum State: String, Decodable {
            case future, closed
        }
        let id: Int
        let link: URL
        let state: State
        let name: String
        let startDate: Date?
        let endDate: Date?
        let completeDate: Date?
        let originBoardID: Int?
        let goal: String?
    }
}

public extension Model.Sprint {
    enum CodingKeys: String, CodingKey {
        case id, state, name, startDate, endDate, completeDate, goal
        case link = "self"
        case originBoardID = "originBoardId"
    }
}
