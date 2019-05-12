//
//  JiraServiceDesk.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public extension Atlassian {
    enum JiraServiceDeskAPICategory {}
    struct JiraServiceDesk<Category: APICategory & JiraServiceDeskAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}

public protocol JiraServiceDeskAPI {}
public extension Atlassian.JiraServiceDeskAPICategory {
    enum Customer: APICategory & JiraServiceDeskAPI {}
    enum Info: APICategory & JiraServiceDeskAPI {}
    enum Organization: APICategory & JiraServiceDeskAPI {}
    enum Queues: APICategory & JiraServiceDeskAPI {}
    enum Request: APICategory & JiraServiceDeskAPI {}
    enum ServiceDesk: APICategory & JiraServiceDeskAPI {}
}

public extension Atlassian.JiraServiceDeskAPICategory where Infrastructure == Cloud {
    enum Knowledgebase: APICategory & JiraServiceDeskAPI {}
    enum RequestType: APICategory & JiraServiceDeskAPI {}
}
