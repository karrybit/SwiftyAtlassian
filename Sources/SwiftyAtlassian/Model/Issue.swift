import Foundation

public extension Model {
    struct Issue: Decodable {
        public let expand: String
        public let id: Int
        public let link: URL
        public let key: String
        public let field: Model.Field
    }
}

public extension Model.Issue {
    enum CodingKeys: String, CodingKey {
        case expand, id, key
        case link = "self"
        case field = "fields"
    }
}

public extension Model {
    struct Field: Decodable {
        public let isFlagged: Bool
        public let sprint: Model.Sprint
        public let closedSprints: [Model.Sprint]
        public let description: String
        public let project: Model.Project
        public let comments: [Model.Comment]
        public let epic: Model.Epic
        public let workLogs: [Model.Worklog]
        public let updated: Int
        public let timeTracking: Model.TimeTracking
    }
}

public extension Model.Field {
    enum CodingKeys: String, CodingKey {
        case sprint, closedSprints, description, project, epic, updated
        case isFlagged = "flagged"
        case comments = "comment"
        case workLogs = "worklog"
        case timeTracking = "timetracking"
    }
}
