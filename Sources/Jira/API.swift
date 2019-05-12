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
public enum Attachment:            APICategory & JiraAPI {}
public enum ApplicationProperties: APICategory & JiraAPI {}
public enum ApplicationRole:       APICategory & JiraAPI {}
public enum Auditing:              APICategory & JiraAPI {}
public enum Avatar:                APICategory & JiraAPI {}
public enum Configuration:         APICategory & JiraAPI {}
public enum Comment:               APICategory & JiraAPI {}
public enum Component:             APICategory & JiraAPI {}
public enum CustomFieldOption:     APICategory & JiraAPI {}
public enum Dashboard:             APICategory & JiraAPI {}
public enum Field:                 APICategory & JiraAPI {}
public enum Filter:                APICategory & JiraAPI {}
public enum Group:                 APICategory & JiraAPI {}
public enum GroupUserPicker:       APICategory & JiraAPI {}
public enum Issue:                 APICategory & JiraAPI {}
public enum IssueLink:             APICategory & JiraAPI {}
public enum IssueLinkType:         APICategory & JiraAPI {}
public enum IssueSecuritySchemes:  APICategory & JiraAPI {}
public enum IssueType:             APICategory & JiraAPI {}
public enum JQL:                   APICategory & JiraAPI {}
public enum MyPermissions:         APICategory & JiraAPI {}
public enum MyPreferences:         APICategory & JiraAPI {}
public enum Myself:                APICategory & JiraAPI {}
public enum NotificationScheme:    APICategory & JiraAPI {}
public enum Permissions:           APICategory & JiraAPI {}
public enum PermissionScheme:      APICategory & JiraAPI {}
public enum Priority:              APICategory & JiraAPI {}
public enum Project:               APICategory & JiraAPI {}
public enum ProjectCategory:       APICategory & JiraAPI {}
public enum ProjectValidate:       APICategory & JiraAPI {}
public enum Resolution:            APICategory & JiraAPI {}
public enum Role:                  APICategory & JiraAPI {}
public enum Screens:               APICategory & JiraAPI {}
public enum Search:                APICategory & JiraAPI {}
public enum SecurityLevel:         APICategory & JiraAPI {}
public enum ServerInfo:            APICategory & JiraAPI {}
public enum Settings:              APICategory & JiraAPI {}
public enum Status:                APICategory & JiraAPI {}
public enum StatusCategory:        APICategory & JiraAPI {}
public enum UniversalAvatar:       APICategory & JiraAPI {}
public enum User:                  APICategory & JiraAPI {}
public enum Version:               APICategory & JiraAPI {}
public enum Workflow:              APICategory & JiraAPI {}
public enum WorkflowScheme:        APICategory & JiraAPI {}
public enum WorkLog:               APICategory & JiraAPI {}

// server only
public enum Cluster:           APICategory & JiraAPI {}
public enum ClusterZdu:        APICategory & JiraAPI {}
public enum CustomFields:      APICategory & JiraAPI {}
public enum Summary:           APICategory & JiraAPI {}
public enum IssueTypeScheme:   APICategory & JiraAPI {}
public enum LicenseValidator:  APICategory & JiraAPI {}
public enum Jmx:               APICategory & JiraAPI {}
public enum Password:          APICategory & JiraAPI {}
public enum PrioritySchemes:   APICategory & JiraAPI {}
public enum Reindex:           APICategory & JiraAPI {}
public enum Upgrade:           APICategory & JiraAPI {}
public enum Session:           APICategory & JiraAPI {}
public enum WebSudo:           APICategory & JiraAPI {}

// cloud only
public enum Expression:    APICategory & JiraAPI {}
public enum Task:          APICategory & JiraAPI {}
public enum WebHook:       APICategory & JiraAPI {}
