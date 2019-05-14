//
//  Jira.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/13.
//

import Foundation

public protocol JiraAPI {}

public extension Atlassian.Jira {
    struct Attachment: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct ApplicationProperties: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct ApplicationRole: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Auditing: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Avatar: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Configuration: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Comment: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Component: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct CustomFieldOption: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Dashboard: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Field: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Filter: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Group: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct GroupUserPicker: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Issue: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct IssueLink: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct IssueLinkType: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct IssueSecuritySchemes:  APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct IssueType: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct JQL: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct MyPermissions: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct MyPreferences: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Myself: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct NotificationScheme: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Permissions: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct PermissionScheme: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Priority: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Project: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct ProjectCategory: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct ProjectValidate: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Resolution: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Role: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Screens: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Search: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct SecurityLevel: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct ServerInfo: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Settings: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Status: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct StatusCategory: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct UniversalAvatar: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct User: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Version: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Workflow: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct WorkflowScheme: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct WorkLog: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}

public extension Atlassian.Jira where Infrastructure == Server {
    struct Cluster: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct ClusterZdu: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct CustomFields: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Summary: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct IssueTypeScheme: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct LicenseValidator: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct JMX: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Password: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct PrioritySchemes: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Reindex: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Upgrade: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Session: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct WebSudo: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}

public extension Atlassian.Jira where Infrastructure == Cloud {
    struct Expression: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Task: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct WebHook: APICategory & JiraAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}
