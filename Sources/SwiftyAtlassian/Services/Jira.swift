import Foundation

public extension Atlassian.Jira {
    struct Attachment: API {}
    struct ApplicationProperties: API {}
    struct ApplicationRole: API {}
    struct Auditing: API {}
    struct Avatar: API {}
    struct Configuration: API {}
    struct Comment: API {}
    struct Component: API {}
    struct CustomFieldOption: API {}
    struct Dashboard: API {}
    struct Field: API {}
    struct Filter: API {}
    struct Group: API {}
    struct GroupUserPicker: API {}
    struct Issue: API {}
    struct IssueLink: API {}
    struct IssueLinkType: API {}
    struct IssueSecuritySchemes:  API {}
    struct IssueType: API {}
    struct JQL: API {}
    struct MyPermissions: API {}
    struct MyPreferences: API {}
    struct Myself: API {}
    struct NotificationScheme: API {}
    struct Permissions: API {}
    struct PermissionScheme: API {}
    struct Priority: API {}
    struct Project: API {}
    struct ProjectCategory: API {}
    struct ProjectValidate: API {}
    struct Resolution: API {}
    struct Role: API {}
    struct Screens: API {}
    struct Search: API {}
    struct SecurityLevel: API {}
    struct ServerInfo: API {}
    struct Settings: API {}
    struct Status: API {}
    struct StatusCategory: API {}
    struct UniversalAvatar: API {}
    struct User: API {}
    struct Version: API {}
    struct Workflow: API {}
    struct WorkflowScheme: API {}
    struct WorkLog: API {}
}

public extension Atlassian.Jira where Host == Hosting.SelfManaged {
    struct Cluster: API {}
    struct ClusterZdu: API {}
    struct CustomFields: API {}
    struct Summary: API {}
    struct IssueTypeScheme: API {}
    struct LicenseValidator: API {}
    struct JMX: API {}
    struct Password: API {}
    struct PrioritySchemes: API {}
    struct Reindex: API {}
    struct Upgrade: API {}
    struct Session: API {}
    struct WebSudo: API {}
}

public extension Atlassian.Jira where Host == Hosting.Cloud {
    struct Expression: API {}
    struct Task: API {}
    struct WebHook: API {}
}
