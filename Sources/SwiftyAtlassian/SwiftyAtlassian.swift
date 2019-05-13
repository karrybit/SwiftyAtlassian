//
//  SwiftyAtlassian.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/11.
//

import Foundation

public protocol InfrastructureProtocol {}
public enum Server: InfrastructureProtocol {}
public enum Cloud: InfrastructureProtocol {}

public struct Atlassian<Infrastructure: InfrastructureProtocol> {}

public extension Atlassian {
    struct Bitbucket: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    
    struct Confluence: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    
    struct Jira: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    
    struct JiraServiceDesk: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    
    struct JiraSoftware: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}

public extension Atlassian where Infrastructure == Server {
    struct Bamboo: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    
    struct Crowd: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    
    struct FisheyeAndCrucible: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}

public extension Atlassian where Infrastructure == Cloud {
    struct Opsgenie: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    
    struct Organizations: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    
    struct StatusPage: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    
    struct Trello: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    
    struct UserManagement: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    
    struct UserProvisioning: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}
