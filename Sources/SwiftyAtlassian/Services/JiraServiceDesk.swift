//
//  JiraServiceDesk.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/13.
//

import Foundation

public protocol JiraServiceDeskAPI {}

public extension Atlassian.JiraServiceDesk {
    struct Customer:      APICategory & JiraServiceDeskAPI {}
    struct Info:          APICategory & JiraServiceDeskAPI {}
    struct Organization:  APICategory & JiraServiceDeskAPI {}
    struct Queues:        APICategory & JiraServiceDeskAPI {}
    struct Request:       APICategory & JiraServiceDeskAPI {}
    struct ServiceDesk:   APICategory & JiraServiceDeskAPI {}
}

public extension Atlassian.JiraServiceDesk where Infrastructure == Cloud {
    struct Knowledgebase: APICategory & JiraServiceDeskAPI {}
    struct RequestType:   APICategory & JiraServiceDeskAPI {}
}
