//
//  JiraServiceDesk.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/13.
//

import Foundation

public protocol JiraServiceDeskAPI {}

public extension Atlassian.JiraServiceDesk {
    struct Customer: APICategory & JiraServiceDeskAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Info: APICategory & JiraServiceDeskAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Organization: APICategory & JiraServiceDeskAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Queues: APICategory & JiraServiceDeskAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Request: APICategory & JiraServiceDeskAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct ServiceDesk: APICategory & JiraServiceDeskAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}


public extension Atlassian.JiraServiceDesk where Infrastructure == Cloud {
    struct Knowledgebase: APICategory & JiraServiceDeskAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct RequestType: APICategory & JiraServiceDeskAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}
