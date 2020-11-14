import Foundation

public extension Atlassian.Jira {
    static var servicePath: String {
        return "rest/api/"
    }

    struct Attachment: API {
        public static var path: String { Atlassian.Jira.servicePath + "attachment" }
    }
    struct ApplicationProperties: API {
        public static var path: String { Atlassian.Jira.servicePath + "application_properties" }
    }
    struct ApplicationRole: API {
        public static var path: String { Atlassian.Jira.servicePath + "application_role" }
    }
    struct Auditing: API {
        public static var path: String { Atlassian.Jira.servicePath + "auditing" }
    }
    struct Avatar: API {
        public static var path: String { Atlassian.Jira.servicePath + "avatar" }
    }
    struct Configuration: API {
        public static var path: String { Atlassian.Jira.servicePath + "configuration" }
    }
    struct Comment: API {
        public static var path: String { Atlassian.Jira.servicePath + "comment" }
    }
    struct Component: API {
        public static var path: String { Atlassian.Jira.servicePath + "component" }
    }
    struct CustomFieldOption: API {
        public static var path: String { Atlassian.Jira.servicePath + "custom_field_option" }
    }
    struct Dashboard: API {
        public static var path: String { Atlassian.Jira.servicePath + "dashboard" }
    }
    struct Field: API {
        public static var path: String { Atlassian.Jira.servicePath + "field" }
    }
    struct Filter: API {
        public static var path: String { Atlassian.Jira.servicePath + "filter" }
    }
    struct Group: API {
        public static var path: String { Atlassian.Jira.servicePath + "group" }
    }
    struct GroupUserPicker: API {
        public static var path: String { Atlassian.Jira.servicePath + "group_user_picker" }
    }
    struct Issue: API {
        public static var path: String { Atlassian.Jira.servicePath + "issue" }
    }
    struct IssueLink: API {
        public static var path: String { Atlassian.Jira.servicePath + "issue_link" }
    }
    struct IssueLinkType: API {
        public static var path: String { Atlassian.Jira.servicePath + "issue_link_type" }
    }
    struct IssueSecuritySchemes: API {
        public static var path: String { Atlassian.Jira.servicePath + "issue_security_schemes" }
    }
    struct IssueType: API {
        public static var path: String { Atlassian.Jira.servicePath + "issue_type" }
    }
    struct JQL: API {
        public static var path: String { Atlassian.Jira.servicePath + "jql" }
    }
    struct MyPermissions: API {
        public static var path: String { Atlassian.Jira.servicePath + "my_permissions" }
    }
    struct MyPreferences: API {
        public static var path: String { Atlassian.Jira.servicePath + "my_preferences" }
    }
    struct Myself: API {
        public static var path: String { Atlassian.Jira.servicePath + "myself" }
    }
    struct NotificationScheme: API {
        public static var path: String { Atlassian.Jira.servicePath + "notification_scheme" }
    }
    struct Permissions: API {
        public static var path: String { Atlassian.Jira.servicePath + "permissions" }
    }
    struct PermissionScheme: API {
        public static var path: String { Atlassian.Jira.servicePath + "permission_scheme" }
    }
    struct Priority: API {
        public static var path: String { Atlassian.Jira.servicePath + "priority" }
    }
    struct Project: API {
        public static var path: String { Atlassian.Jira.servicePath + "project" }
    }
    struct ProjectCategory: API {
        public static var path: String { Atlassian.Jira.servicePath + "project_category" }
    }
    struct ProjectValidate: API {
        public static var path: String { Atlassian.Jira.servicePath + "project_validate" }
    }
    struct Resolution: API {
        public static var path: String { Atlassian.Jira.servicePath + "resolution" }
    }
    struct Role: API {
        public static var path: String { Atlassian.Jira.servicePath + "role" }
    }
    struct Screens: API {
        public static var path: String { Atlassian.Jira.servicePath + "screens" }
    }
    struct Search: API {
        public static var path: String { Atlassian.Jira.servicePath + "search" }
    }
    struct SecurityLevel: API {
        public static var path: String { Atlassian.Jira.servicePath + "security_level" }
    }
    struct ServerInfo: API {
        public static var path: String { Atlassian.Jira.servicePath + "server_info" }
    }
    struct Settings: API {
        public static var path: String { Atlassian.Jira.servicePath + "settings" }
    }
    struct Status: API {
        public static var path: String { Atlassian.Jira.servicePath + "status" }
    }
    struct StatusCategory: API {
        public static var path: String { Atlassian.Jira.servicePath + "status_category" }
    }
    struct UniversalAvatar: API {
        public static var path: String { Atlassian.Jira.servicePath + "universal_avatar" }
    }
    struct User: API {
        public static var path: String { Atlassian.Jira.servicePath + "user" }
    }
    struct Version: API {
        public static var path: String { Atlassian.Jira.servicePath + "version" }
    }
    struct Workflow: API {
        public static var path: String { Atlassian.Jira.servicePath + "workflow" }
    }
    struct WorkflowScheme: API {
        public static var path: String { Atlassian.Jira.servicePath + "workflow_scheme" }
    }
    struct WorkLog: API {
        public static var path: String { Atlassian.Jira.servicePath + "work_log" }
    }
}

public extension Atlassian.Jira where Host == Hosting.SelfManaged {
    struct Cluster: API {
        public static var path: String { Atlassian.Jira.servicePath + "cluster" }
    }
    struct ClusterZdu: API {
        public static var path: String { Atlassian.Jira.servicePath + "cluster_zdu" }
    }
    struct CustomFields: API {
        public static var path: String { Atlassian.Jira.servicePath + "custom_fields" }
    }
    struct Summary: API {
        public static var path: String { Atlassian.Jira.servicePath + "summary" }
    }
    struct IssueTypeScheme: API {
        public static var path: String { Atlassian.Jira.servicePath + "issue_type_scheme" }
    }
    struct LicenseValidator: API {
        public static var path: String { Atlassian.Jira.servicePath + "license_validator" }
    }
    struct JMX: API {
        public static var path: String { Atlassian.Jira.servicePath + "jmx" }
    }
    struct Password: API {
        public static var path: String { Atlassian.Jira.servicePath + "password" }
    }
    struct PrioritySchemes: API {
        public static var path: String { Atlassian.Jira.servicePath + "priority_schemes" }
    }
    struct Reindex: API {
        public static var path: String { Atlassian.Jira.servicePath + "reindex" }
    }
    struct Upgrade: API {
        public static var path: String { Atlassian.Jira.servicePath + "upgrade" }
    }
    struct Session: API {
        public static var path: String { Atlassian.Jira.servicePath + "session" }
    }
    struct WebSudo: API {
        public static var path: String { Atlassian.Jira.servicePath + "web_sudo" }
    }
}

public extension Atlassian.Jira where Host == Hosting.Cloud {
    struct Expression: API {
        public static var path: String { Atlassian.Jira.servicePath + "expression" }
    }
    struct Task: API {
        public static var path: String { Atlassian.Jira.servicePath + "task" }
    }
    struct WebHook: API {
        public static var path: String { Atlassian.Jira.servicePath + "webhook" }
    }
}
