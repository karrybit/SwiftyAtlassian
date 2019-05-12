//
//  Jira.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public extension Atlassian {
    struct Jira<Category: APICategory & JiraAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}

public protocol JiraAPI {}
public extension Atlassian.Jira {
    enum Two: JiraAPI {}
    enum ApplicationProperties: JiraAPI {}
    enum ApplicationRole: JiraAPI {}
    enum Attachment: JiraAPI {}
    enum Auditing: JiraAPI {}
    enum Avatar: JiraAPI {}
    enum Cluster: JiraAPI {}
    enum ClusterZdu: JiraAPI {}
    enum Comment: JiraAPI {}
    enum Component: JiraAPI {}
    enum Configuration: JiraAPI {}
    enum CustomFieldOption: JiraAPI {}
    enum CustomFields: JiraAPI {}
    enum Dashboard: JiraAPI {}
    enum DashboardItems: JiraAPI {}
    enum Field: JiraAPI {}
    enum Filter: JiraAPI {}
    enum Group: JiraAPI {}
    enum Groups: JiraAPI {}
    enum GroupUserPicker: JiraAPI {}
    enum Summary: JiraAPI {}
    enum Issue: JiraAPI {}
    enum IssueAttachments: JiraAPI {}
    enum IssueProperties: JiraAPI {}
    enum IssueSubtask: JiraAPI {}
    enum IssueLink: JiraAPI {}
    enum IssueLinkType: JiraAPI {}
    enum IssueSecuritySchemes: JiraAPI {}
    enum IssueType: JiraAPI {}
    enum IssueTypeProperties: JiraAPI {}
    enum IssueTypeScheme: JiraAPI {}
    enum AutocompleteData: JiraAPI {}
    enum LicenseValidator: JiraAPI {}
    enum Jmx: JiraAPI {}
    enum MyPreferences: JiraAPI {}
    enum Myself: JiraAPI {}
    enum NotificationScheme: JiraAPI {}
    enum Password: JiraAPI {}
    enum PermissionScheme: JiraAPI {}
    enum Priority: JiraAPI {}
    enum PrioritySchemes: JiraAPI {}
    enum Project: JiraAPI {}
    enum ProjectProperties: JiraAPI {}
    enum ProjectRole: JiraAPI {}
    enum ProjectIssueSecurityLevelScheme: JiraAPI {}
    enum ProjectNotificationScheme: JiraAPI {}
    enum ProjectPermissionScheme: JiraAPI {}
    enum ProjectPriorityScheme: JiraAPI {}
    enum ProjectSecurityLevel: JiraAPI {}
    enum ProjectType: JiraAPI {}
    enum ProjectCategory: JiraAPI {}
    enum ProjectValidate: JiraAPI {}
    enum Reindex: JiraAPI {}
    enum ReindexRequest: JiraAPI {}
    enum resolution: JiraAPI {}
    enum Role: JiraAPI {}
    enum Screens: JiraAPI {}
    enum Search: JiraAPI {}
    enum SecurityLevel: JiraAPI {}
    enum ServerInfo: JiraAPI {}
    enum Settings: JiraAPI {}
    enum Status: JiraAPI {}
    enum StatusCategory: JiraAPI {}
    enum UniversalAvatar: JiraAPI {}
    enum Upgrade: JiraAPI {}
    enum User: JiraAPI {}
    enum Properties: JiraAPI {}
    enum Version: JiraAPI {}
    enum Workflow: JiraAPI {}
    enum WorkflowScheme: JiraAPI {}
    enum WorkLog: JiraAPI {}
    enum Session: JiraAPI {}
    enum WebSudo: JiraAPI {}
}
