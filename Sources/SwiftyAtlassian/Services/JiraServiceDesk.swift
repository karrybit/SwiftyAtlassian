//
//  JiraServiceDesk.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/13.
//

import Foundation

public protocol JiraServiceDeskAPI {}

public extension Atlassian.JiraServiceDesk {
    class Customer: APICategory, JiraServiceDeskAPI {}
    class Info: APICategory, JiraServiceDeskAPI {}
    class Organization: APICategory, JiraServiceDeskAPI {}
    class Queues: APICategory, JiraServiceDeskAPI {}
    class Request: APICategory, JiraServiceDeskAPI {}
    class ServiceDesk: APICategory, JiraServiceDeskAPI {}
}


public extension Atlassian.JiraServiceDesk where Infrastructure == Cloud {
    class Knowledgebase: APICategory, JiraServiceDeskAPI {}
    class RequestType: APICategory, JiraServiceDeskAPI {}
}
