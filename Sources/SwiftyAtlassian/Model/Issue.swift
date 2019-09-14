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
        public let project: Project
        public let comments: [Comment]
        public let epic: Epic
        public let workLogs: [WorkLog]
        public let updated: Int
        public let timeTracking: TimeTracking
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

public extension Model {
    struct Project: Decodable {
        public let link: URL
        public let id: Int
        public let key: String
        public let name: String
        public let avatarURLs: AvatarURL
        public let projectCategory: ProjectCategory
    }
}

public extension Model.Project {
    enum CodingKeys: String, CodingKey {
        case id, key, name, projectCategory
        case link = "self"
        case avatarURLs = "avatarUrls"
    }
}

public extension Model {
    struct AvatarURL: Decodable {
        public let xsmall: URL
        public let small: URL
        public let medium: URL
        public let large: URL
    }
}

public extension Model.AvatarURL {
    enum CodingKeys: String, CodingKey {
        case xsmall = "16x16"
        case small = "24x24"
        case medium = "32x32"
        case large = "48x48"
    }
}

public extension Model {
    struct ProjectCategory: Decodable {
        public let link: URL
        public let id: Int
        public let name: String
        public let description: String
    }
}

public extension Model.ProjectCategory {
    enum CodingKeys: String, CodingKey {
        case id, name, description
        case link = "self"
    }
}

public extension Model {
    struct Comment: Decodable {
        public let link: URL
        public let id: Int
        public let author: Author
        public let body: String
        public let updateAuthor: Author
        public let createdDate: Date
        public let updatedDate: Date
        public let visibility: Visibility
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

public extension Model {
    struct Author: Decodable {
        public let link: URL
        public let name: String
        public let displayName: String
        public let isActive: Bool
    }
}

public extension Model.Author {
    enum CodingKeys: String, CodingKey {
        case name, displayName
        case link = "self"
        case isActive = "active"
    }
}

public extension Model {
    struct Visibility: Decodable {
        public enum `Type`: String, Decodable {
            case role, group
        }
        public let type: Type
        public let value: String
    }
}

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

public extension Model {
    struct WorkLog: Decodable {
        public let link: URL
        public let author: Author
        public let updateAuthor: Author
        public let comment: String
        public let updatedDate: Date
        public let visibility: Visibility
        public let startedDate: Date
        public let timeSpentSeconds: Int
        public let id: Int
        public let issueID: Int
    }
}

public extension Model.WorkLog {
    enum CodingKeys: String, CodingKey {
        case author, updateAuthor, comment, visibility, timeSpentSeconds, id
        case link = "self"
        case updatedDate = "updated"
        case startedDate = "started"
        case issueID = "issueId"
    }
}

public extension Model {
    struct TimeTracking: Decodable {
        public let originalEstimateSeconds: Int
        public let remainingEstimateSeconds: Int
        public let timeSpentSeconds: Int
    }
}


