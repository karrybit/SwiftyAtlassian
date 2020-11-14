import Foundation

public protocol JiraAPI: API where ServiceType == Atlassian<Hosting.SelfManaged>.Jira {}

public extension Atlassian.Jira {
    static var servicePath: String {
        return "rest/api/"
    }

    struct Attachment: JiraAPI {}
    struct ApplicationProperties: JiraAPI {}
    struct ApplicationRole: JiraAPI {}
    struct Auditing: JiraAPI {}
    struct Avatar: JiraAPI {}
    struct Configuration: JiraAPI {}
    struct Comment: JiraAPI {}
    struct Component: JiraAPI {}
    struct CustomFieldOption: JiraAPI {}
    struct Dashboard: JiraAPI {}
    struct Field: JiraAPI {}
    struct Filter: JiraAPI {}
    struct Group: JiraAPI {}
    struct GroupUserPicker: JiraAPI {}
    struct Issue: JiraAPI {}
    struct IssueLink: JiraAPI {}
    struct IssueLinkType: JiraAPI {}
    struct IssueSecuritySchemes: JiraAPI {}
    struct IssueType: JiraAPI {}
    struct JQL: JiraAPI {}
    struct MyPermissions: JiraAPI {}
    struct MyPreferences: JiraAPI {}
    struct Myself: JiraAPI {}
    struct NotificationScheme: JiraAPI {}
    struct Permissions: JiraAPI {}
    struct PermissionScheme: JiraAPI {}
    struct Priority: JiraAPI {}
    struct Project: JiraAPI {}
    struct ProjectCategory: JiraAPI {}
    struct ProjectValidate: JiraAPI {}
    struct Resolution: JiraAPI {}
    struct Role: JiraAPI {}
    struct Screens: JiraAPI {}
    struct Search: JiraAPI {}
    struct SecurityLevel: JiraAPI {}
    struct ServerInfo: JiraAPI {}
    struct Settings: JiraAPI {}
    struct Status: JiraAPI {}
    struct StatusCategory: JiraAPI {}
    struct UniversalAvatar: JiraAPI {}
    struct User: JiraAPI {}
    struct Version: JiraAPI {}
    struct Workflow: JiraAPI {}
    struct WorkflowScheme: JiraAPI {}
    struct WorkLog: JiraAPI {}
}

public extension Atlassian.Jira where Host == Hosting.SelfManaged {
    struct Cluster: JiraAPI {}
    struct ClusterZdu: JiraAPI {}
    struct CustomFields: JiraAPI {}
    struct Summary: JiraAPI {}
    struct IssueTypeScheme: JiraAPI {}
    struct LicenseValidator: JiraAPI {}
    struct JMX: JiraAPI {}
    struct Password: JiraAPI {}
    struct PrioritySchemes: JiraAPI {}
    struct Reindex: JiraAPI {}
    struct Upgrade: JiraAPI {}
    struct Session: JiraAPI {}
    struct WebSudo: JiraAPI {}
}

public extension Atlassian.Jira where Host == Hosting.Cloud {
    struct Expression: JiraAPI {}
    struct Task: JiraAPI {}
    struct WebHook: JiraAPI {}
}
