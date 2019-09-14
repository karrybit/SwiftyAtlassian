import Foundation

public extension Model {
    struct Issue: Decodable {
        let expand: String
        let id: Int
        let link: URL
        let key: String
        let field: Model.Field
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
        let isFlagged: Bool
        let sprint: Model.Sprint
        let closedSprints: [Model.Sprint]
        let description: String
        let project: Project
        let comments: [Comment]
        let epic: Epic
        let workLogs: [WorkLog]
        let updated: Int
        let timeTracking: TimeTracking
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
        let link: URL
        let id: Int
        let key: String
        let name: String
        let avatarURLs: AvatarURL
        let projectCategory: ProjectCategory
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
        let xsmall: URL
        let small: URL
        let medium: URL
        let large: URL
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
        let link: URL
        let id: Int
        let name: String
        let description: String
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
        let link: URL
        let id: Int
        let author: Author
        let body: String
        let updateAuthor: Author
        let createdDate: Date
        let updatedDate: Date
        let visibility: Visibility
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
        let link: URL
        let name: String
        let displayName: String
        let isActive: Bool
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
        enum `Type`: String, Decodable {
            case role, group
        }
        let type: Type
        let value: String
    }
}

public extension Model {
    struct Epic: Decodable {
        let id: Int
        let link: String
        let name: String
        let summary: String
        let color: String
        let isDone: Bool
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
        let link: URL
        let author: Author
        let updateAuthor: Author
        let comment: String
        let updatedDate: Date
        let visibility: Visibility
        let startedDate: Date
        let timeSpentSeconds: Int
        let id: Int
        let issueID: Int
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
        let originalEstimateSeconds: Int
        let remainingEstimateSeconds: Int
        let timeSpentSeconds: Int
    }
}


