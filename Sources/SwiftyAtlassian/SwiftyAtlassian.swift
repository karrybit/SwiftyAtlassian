//
//  SwiftyAtlassian.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/11.
//

import Foundation

public struct User {
    public let name: String
    public let password: String
    public init(name: String, password: String) {
        self.name = name
        self.password = password
    }
}

public protocol InfrastructureProtocol {}
public enum Server: InfrastructureProtocol {}
public enum Cloud: InfrastructureProtocol {}

public struct Atlassian<Infrastructure: InfrastructureProtocol> {}

public protocol ServiceProtocol {
    var user: User { get }
    var header: [String: String] { get }
    init(withAuth user: User)
}

public extension ServiceProtocol {
    var header: [String: String] {
        var header: [String: String] = [:]
        header["Content-Type"] = "application/json"
        guard let credentialData = "\(user.name):\(user.password)".data(using: String.Encoding.utf8) else {
            fatalError("⛔️ failed to generate by user credential data.")
        }
        let credential = credentialData.base64EncodedString(options: [])
        header["Authorization"] = "Basic \(credential)"
        return header
    }
}

public protocol ProcessCategory {}
public enum Sprint: ProcessCategory {}
public enum Content: ProcessCategory {}

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
