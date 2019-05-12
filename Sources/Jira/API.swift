//
//  API.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation
import AtlassianProtocol

public protocol JiraAPI {}

// both infrastructure
enum Attachment:            APICategory & JiraAPI {}
enum ApplicationProperties: APICategory & JiraAPI {}
enum ApplicationRole:       APICategory & JiraAPI {}
enum Auditing:              APICategory & JiraAPI {}
enum Avatar:                APICategory & JiraAPI {}
enum Configuration:         APICategory & JiraAPI {}
enum Comment:               APICategory & JiraAPI {}
enum Component:             APICategory & JiraAPI {}
enum CustomFieldOption:     APICategory & JiraAPI {}
enum Dashboard:             APICategory & JiraAPI {}
enum Field:                 APICategory & JiraAPI {}
enum Filter:                APICategory & JiraAPI {}
enum Group:                 APICategory & JiraAPI {}
enum GroupUserPicker:       APICategory & JiraAPI {}
enum Issue:                 APICategory & JiraAPI {}
enum IssueLink:             APICategory & JiraAPI {}
enum IssueLinkType:         APICategory & JiraAPI {}
enum IssueSecuritySchemes:  APICategory & JiraAPI {}
enum IssueType:             APICategory & JiraAPI {}
enum JQL:                   APICategory & JiraAPI {}
enum MyPermissions:         APICategory & JiraAPI {}
enum MyPreferences:         APICategory & JiraAPI {}
enum Myself:                APICategory & JiraAPI {}
enum NotificationScheme:    APICategory & JiraAPI {}
enum Permissions:           APICategory & JiraAPI {}
enum PermissionScheme:      APICategory & JiraAPI {}
enum Priority:              APICategory & JiraAPI {}
enum Project:               APICategory & JiraAPI {}
enum ProjectCategory:       APICategory & JiraAPI {}
enum ProjectValidate:       APICategory & JiraAPI {}
enum Resolution:            APICategory & JiraAPI {}
enum Role:                  APICategory & JiraAPI {}
enum Screens:               APICategory & JiraAPI {}
enum Search:                APICategory & JiraAPI {}
enum SecurityLevel:         APICategory & JiraAPI {}
enum ServerInfo:            APICategory & JiraAPI {}
enum Settings:              APICategory & JiraAPI {}
enum Status:                APICategory & JiraAPI {}
enum StatusCategory:        APICategory & JiraAPI {}
enum UniversalAvatar:       APICategory & JiraAPI {}
enum User:                  APICategory & JiraAPI {}
enum Version:               APICategory & JiraAPI {}
enum Workflow:              APICategory & JiraAPI {}
enum WorkflowScheme:        APICategory & JiraAPI {}
enum WorkLog:               APICategory & JiraAPI {}

// server only
enum Cluster:           APICategory & JiraAPI {}
enum ClusterZdu:        APICategory & JiraAPI {}
enum CustomFields:      APICategory & JiraAPI {}
enum Summary:           APICategory & JiraAPI {}
enum IssueTypeScheme:   APICategory & JiraAPI {}
enum LicenseValidator:  APICategory & JiraAPI {}
enum Jmx:               APICategory & JiraAPI {}
enum Password:          APICategory & JiraAPI {}
enum PrioritySchemes:   APICategory & JiraAPI {}
enum Reindex:           APICategory & JiraAPI {}
enum Upgrade:           APICategory & JiraAPI {}
enum Session:           APICategory & JiraAPI {}
enum WebSudo:           APICategory & JiraAPI {}

// cloud only
enum Expression:    APICategory & JiraAPI {}
enum Task:          APICategory & JiraAPI {}
enum WebHook:       APICategory & JiraAPI {}
