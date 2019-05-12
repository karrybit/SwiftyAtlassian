//
//  Jira.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public extension Atlassian {
    struct Jira<Category: JiraAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}

public protocol JiraAPI: APICategory {}
public enum Two: JiraAPI {}
public enum ApplicationProperties: JiraAPI {}
public enum ApplicationRole: JiraAPI {}
public enum Attachment: JiraAPI {}
public enum Auditing: JiraAPI {}
public enum Avatar: JiraAPI {}
public enum Cluster: JiraAPI {}
public enum ClusterZdu: JiraAPI {}
public enum Comment: JiraAPI {}
public enum Component: JiraAPI {}
public enum Configuration: JiraAPI {}
public enum CustomFieldOption: JiraAPI {}
public enum CustomFields: JiraAPI {}
public enum Dashboard: JiraAPI {}
public enum DashboardItems: JiraAPI {}
public enum Field: JiraAPI {}
public enum Filter: JiraAPI {}
public enum Group: JiraAPI {}
public enum Groups: JiraAPI {}
public enum GroupUserPicker: JiraAPI {}
public enum Summary: JiraAPI {}
public enum Issue: JiraAPI {}
public enum IssueAttachments: JiraAPI {}
public enum IssueProperties: JiraAPI {}
public enum IssueSubtask: JiraAPI {}
public enum IssueLink: JiraAPI {}
public enum IssueLinkType: JiraAPI {}
public enum IssueSecuritySchemes: JiraAPI {}
public enum IssueType: JiraAPI {}
public enum IssueTypeProperties: JiraAPI {}
public enum IssueTypeScheme: JiraAPI {}
public enum AutocompleteData: JiraAPI {}
public enum LicenseValidator: JiraAPI {}
public enum Jmx: JiraAPI {}
public enum MyPreferences: JiraAPI {}
public enum Myself: JiraAPI {}
public enum NotificationScheme: JiraAPI {}
public enum Password: JiraAPI {}
public enum PermissionScheme: JiraAPI {}
public enum Priority: JiraAPI {}
public enum PrioritySchemes: JiraAPI {}
public enum Project: JiraAPI {}
public enum ProjectProperties: JiraAPI {}
public enum ProjectRole: JiraAPI {}
public enum ProjectIssueSecurityLevelScheme: JiraAPI {}
public enum ProjectNotificationScheme: JiraAPI {}
public enum ProjectPermissionScheme: JiraAPI {}
public enum ProjectPriorityScheme: JiraAPI {}
public enum ProjectSecurityLevel: JiraAPI {}
public enum ProjectType: JiraAPI {}
public enum ProjectCategory: JiraAPI {}
public enum ProjectValidate: JiraAPI {}
public enum Reindex: JiraAPI {}
public enum ReindexRequest: JiraAPI {}
public enum resolution: JiraAPI {}
public enum Role: JiraAPI {}
public enum Screens: JiraAPI {}
public enum Search: JiraAPI {}
public enum SecurityLevel: JiraAPI {}
public enum ServerInfo: JiraAPI {}
public enum Settings: JiraAPI {}
public enum Status: JiraAPI {}
public enum StatusCategory: JiraAPI {}
public enum UniversalAvatar: JiraAPI {}
public enum Upgrade: JiraAPI {}
public enum User: JiraAPI {}
public enum Properties: JiraAPI {}
public enum Version: JiraAPI {}
public enum Workflow: JiraAPI {}
public enum WorkflowScheme: JiraAPI {}
public enum WorkLog: JiraAPI {}
public enum Session: JiraAPI {}
public enum WebSudo: JiraAPI {}
