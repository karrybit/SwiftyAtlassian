//
//  Jira.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/13.
//

import Foundation

public protocol JiraAPI {}

public extension Atlassian.Jira {
    class Attachment: API, JiraAPI {}
    class ApplicationProperties: API, JiraAPI {}
    class ApplicationRole: API, JiraAPI {}
    class Auditing: API, JiraAPI {}
    class Avatar: API, JiraAPI {}
    class Configuration: API, JiraAPI {}
    class Comment: API, JiraAPI {}
    class Component: API, JiraAPI {}
    class CustomFieldOption: API, JiraAPI {}
    class Dashboard: API, JiraAPI {}
    class Field: API, JiraAPI {}
    class Filter: API, JiraAPI {}
    class Group: API, JiraAPI {}
    class GroupUserPicker: API, JiraAPI {}
    class Issue: API, JiraAPI {}
    class IssueLink: API, JiraAPI {}
    class IssueLinkType: API, JiraAPI {}
    class IssueSecuritySchemes:  API, JiraAPI {}
    class IssueType: API, JiraAPI {}
    class JQL: API, JiraAPI {}
    class MyPermissions: API, JiraAPI {}
    class MyPreferences: API, JiraAPI {}
    class Myself: API, JiraAPI {}
    class NotificationScheme: API, JiraAPI {}
    class Permissions: API, JiraAPI {}
    class PermissionScheme: API, JiraAPI {}
    class Priority: API, JiraAPI {}
    class Project: API, JiraAPI {}
    class ProjectCategory: API, JiraAPI {}
    class ProjectValidate: API, JiraAPI {}
    class Resolution: API, JiraAPI {}
    class Role: API, JiraAPI {}
    class Screens: API, JiraAPI {}
    class Search: API, JiraAPI {}
    class SecurityLevel: API, JiraAPI {}
    class ServerInfo: API, JiraAPI {}
    class Settings: API, JiraAPI {}
    class Status: API, JiraAPI {}
    class StatusCategory: API, JiraAPI {}
    class UniversalAvatar: API, JiraAPI {}
    class User: API, JiraAPI {}
    class Version: API, JiraAPI {}
    class Workflow: API, JiraAPI {}
    class WorkflowScheme: API, JiraAPI {}
    class WorkLog: API, JiraAPI {}
}

public extension Atlassian.Jira where Infrastructure == Server {
    class Cluster: API, JiraAPI {}
    class ClusterZdu: API, JiraAPI {}
    class CustomFields: API, JiraAPI {}
    class Summary: API, JiraAPI {}
    class IssueTypeScheme: API, JiraAPI {}
    class LicenseValidator: API, JiraAPI {}
    class JMX: API, JiraAPI {}
    class Password: API, JiraAPI {}
    class PrioritySchemes: API, JiraAPI {}
    class Reindex: API, JiraAPI {}
    class Upgrade: API, JiraAPI {}
    class Session: API, JiraAPI {}
    class WebSudo: API, JiraAPI {}
}

public extension Atlassian.Jira where Infrastructure == Cloud {
    class Expression: API, JiraAPI {}
    class Task: API, JiraAPI {}
    class WebHook: API, JiraAPI {}
}
