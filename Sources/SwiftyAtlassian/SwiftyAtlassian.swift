//
//  SwiftyAtlassian.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/11.
//

import Foundation
import Protocol
import User

public protocol InfrastructureProtocol {}
public enum Server: InfrastructureProtocol {}
public enum Cloud: InfrastructureProtocol {}

public struct Atlassian<Infrastructure: InfrastructureProtocol> {}

public extension Atlassian {
    struct Jira<Category: ProcessCategory>: ServiceProtocol {
        public let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct JiraSoftware<Category: ProcessCategory>: ServiceProtocol {
        public let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct JiraServiceDesk<Category: ProcessCategory>: ServiceProtocol {
        public let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct Bitbucket<Category: ProcessCategory>: ServiceProtocol {
        public let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct Confluence<Category: ProcessCategory>: ServiceProtocol {
        public let user: User
        public init(withAuth user: User) { self.user = user }
    }
}

public extension Atlassian where Infrastructure == Server {
    struct Bamboo<Category: ProcessCategory>: ServiceProtocol {
        public let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct Crowd<Category: ProcessCategory>: ServiceProtocol {
        public let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct FisheyeAndCrucible<Category: ProcessCategory>: ServiceProtocol {
        public let user: User
        public init(withAuth user: User) { self.user = user }
    }
}

public extension Atlassian where Infrastructure == Cloud {
    struct Organizations<Category: ProcessCategory>: ServiceProtocol {
        public let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct UserManagement<Category: ProcessCategory>: ServiceProtocol {
        public let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct UserProvisioning<Category: ProcessCategory>: ServiceProtocol {
        public let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct Trello<Category: ProcessCategory>: ServiceProtocol {
        public let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct StatusPage<Category: ProcessCategory>: ServiceProtocol {
        public let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct Opsgenie<Category: ProcessCategory>: ServiceProtocol {
        public let user: User
        public init(withAuth user: User) { self.user = user }
    }
}
