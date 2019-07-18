//
//  JiraServiceDesk.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/13.
//

import Foundation

public protocol JiraServiceDeskAPI {}

public extension Atlassian.JiraServiceDesk {
    class Customer: API, JiraServiceDeskAPI {}
    class Info: API, JiraServiceDeskAPI {}
    class Organization: API, JiraServiceDeskAPI {}
    class Queues: API, JiraServiceDeskAPI {}
    class Request: API, JiraServiceDeskAPI {}
    class ServiceDesk: API, JiraServiceDeskAPI {}
}


public extension Atlassian.JiraServiceDesk where Infrastructure == Cloud {
    class Knowledgebase: API, JiraServiceDeskAPI {}
    class RequestType: API, JiraServiceDeskAPI {}
}
