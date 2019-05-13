//
//  Jira.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/13.
//

import Foundation

public protocol JiraAPI {}

public extension Atlassian.Jira {
    struct Attachment:            APICategory & JiraAPI {}
    struct ApplicationProperties: APICategory & JiraAPI {}
    struct ApplicationRole:       APICategory & JiraAPI {}
    struct Auditing:              APICategory & JiraAPI {}
    struct Avatar:                APICategory & JiraAPI {}
    struct Configuration:         APICategory & JiraAPI {}
    struct Comment:               APICategory & JiraAPI {}
    struct Component:             APICategory & JiraAPI {}
    struct CustomFieldOption:     APICategory & JiraAPI {}
    struct Dashboard:             APICategory & JiraAPI {}
    struct Field:                 APICategory & JiraAPI {}
    struct Filter:                APICategory & JiraAPI {}
    struct Group:                 APICategory & JiraAPI {}
    struct GroupUserPicker:       APICategory & JiraAPI {}
    struct Issue:                 APICategory & JiraAPI {}
    struct IssueLink:             APICategory & JiraAPI {}
    struct IssueLinkType:         APICategory & JiraAPI {}
    struct IssueSecuritySchemes:  APICategory & JiraAPI {}
    struct IssueType:             APICategory & JiraAPI {}
    struct JQL:                   APICategory & JiraAPI {}
    struct MyPermissions:         APICategory & JiraAPI {}
    struct MyPreferences:         APICategory & JiraAPI {}
    struct Myself:                APICategory & JiraAPI {}
    struct NotificationScheme:    APICategory & JiraAPI {}
    struct Permissions:           APICategory & JiraAPI {}
    struct PermissionScheme:      APICategory & JiraAPI {}
    struct Priority:              APICategory & JiraAPI {}
    struct Project:               APICategory & JiraAPI {}
    struct ProjectCategory:       APICategory & JiraAPI {}
    struct ProjectValidate:       APICategory & JiraAPI {}
    struct Resolution:            APICategory & JiraAPI {}
    struct Role:                  APICategory & JiraAPI {}
    struct Screens:               APICategory & JiraAPI {}
    struct Search:                APICategory & JiraAPI {}
    struct SecurityLevel:         APICategory & JiraAPI {}
    struct ServerInfo:            APICategory & JiraAPI {}
    struct Settings:              APICategory & JiraAPI {}
    struct Status:                APICategory & JiraAPI {}
    struct StatusCategory:        APICategory & JiraAPI {}
    struct UniversalAvatar:       APICategory & JiraAPI {}
    struct User:                  APICategory & JiraAPI {}
    struct Version:               APICategory & JiraAPI {}
    struct Workflow:              APICategory & JiraAPI {}
    struct WorkflowScheme:        APICategory & JiraAPI {}
    struct WorkLog:               APICategory & JiraAPI {}
}

public extension Atlassian.Jira where Infrastructure == Server {
    struct Cluster:           APICategory & JiraAPI {}
    struct ClusterZdu:        APICategory & JiraAPI {}
    struct CustomFields:      APICategory & JiraAPI {}
    struct Summary:           APICategory & JiraAPI {}
    struct IssueTypeScheme:   APICategory & JiraAPI {}
    struct LicenseValidator:  APICategory & JiraAPI {}
    struct Jmx:               APICategory & JiraAPI {}
    struct Password:          APICategory & JiraAPI {}
    struct PrioritySchemes:   APICategory & JiraAPI {}
    struct Reindex:           APICategory & JiraAPI {}
    struct Upgrade:           APICategory & JiraAPI {}
    struct Session:           APICategory & JiraAPI {}
    struct WebSudo:           APICategory & JiraAPI {}
}

public extension Atlassian.Jira where Infrastructure == Cloud {
    struct Expression:    APICategory & JiraAPI {}
    struct Task:          APICategory & JiraAPI {}
    struct WebHook:       APICategory & JiraAPI {}
}
