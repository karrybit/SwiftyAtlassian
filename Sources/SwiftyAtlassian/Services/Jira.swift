//
//  Jira.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/13.
//

import Foundation

public protocol JiraAPI {}

public extension Atlassian.Jira {
    class Attachment: APICategory, JiraAPI {}
    class ApplicationProperties: APICategory, JiraAPI {}
    class ApplicationRole: APICategory, JiraAPI {}
    class Auditing: APICategory, JiraAPI {}
    class Avatar: APICategory, JiraAPI {}
    class Configuration: APICategory, JiraAPI {}
    class Comment: APICategory, JiraAPI {}
    class Component: APICategory, JiraAPI {}
    class CustomFieldOption: APICategory, JiraAPI {}
    class Dashboard: APICategory, JiraAPI {}
    class Field: APICategory, JiraAPI {}
    class Filter: APICategory, JiraAPI {}
    class Group: APICategory, JiraAPI {}
    class GroupUserPicker: APICategory, JiraAPI {}
    class Issue: APICategory, JiraAPI {}
    class IssueLink: APICategory, JiraAPI {}
    class IssueLinkType: APICategory, JiraAPI {}
    class IssueSecuritySchemes:  APICategory, JiraAPI {}
    class IssueType: APICategory, JiraAPI {}
    class JQL: APICategory, JiraAPI {}
    class MyPermissions: APICategory, JiraAPI {}
    class MyPreferences: APICategory, JiraAPI {}
    class Myself: APICategory, JiraAPI {}
    class NotificationScheme: APICategory, JiraAPI {}
    class Permissions: APICategory, JiraAPI {}
    class PermissionScheme: APICategory, JiraAPI {}
    class Priority: APICategory, JiraAPI {}
    class Project: APICategory, JiraAPI {}
    class ProjectCategory: APICategory, JiraAPI {}
    class ProjectValidate: APICategory, JiraAPI {}
    class Resolution: APICategory, JiraAPI {}
    class Role: APICategory, JiraAPI {}
    class Screens: APICategory, JiraAPI {}
    class Search: APICategory, JiraAPI {}
    class SecurityLevel: APICategory, JiraAPI {}
    class ServerInfo: APICategory, JiraAPI {}
    class Settings: APICategory, JiraAPI {}
    class Status: APICategory, JiraAPI {}
    class StatusCategory: APICategory, JiraAPI {}
    class UniversalAvatar: APICategory, JiraAPI {}
    class User: APICategory, JiraAPI {}
    class Version: APICategory, JiraAPI {}
    class Workflow: APICategory, JiraAPI {}
    class WorkflowScheme: APICategory, JiraAPI {}
    class WorkLog: APICategory, JiraAPI {}
}

public extension Atlassian.Jira where Infrastructure == Server {
    class Cluster: APICategory, JiraAPI {}
    class ClusterZdu: APICategory, JiraAPI {}
    class CustomFields: APICategory, JiraAPI {}
    class Summary: APICategory, JiraAPI {}
    class IssueTypeScheme: APICategory, JiraAPI {}
    class LicenseValidator: APICategory, JiraAPI {}
    class JMX: APICategory, JiraAPI {}
    class Password: APICategory, JiraAPI {}
    class PrioritySchemes: APICategory, JiraAPI {}
    class Reindex: APICategory, JiraAPI {}
    class Upgrade: APICategory, JiraAPI {}
    class Session: APICategory, JiraAPI {}
    class WebSudo: APICategory, JiraAPI {}
}

public extension Atlassian.Jira where Infrastructure == Cloud {
    class Expression: APICategory, JiraAPI {}
    class Task: APICategory, JiraAPI {}
    class WebHook: APICategory, JiraAPI {}
}
