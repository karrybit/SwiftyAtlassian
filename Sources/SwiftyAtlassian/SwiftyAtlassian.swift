public struct User {
    public init() {}
}

public protocol InfrastructureProtocol {}
public enum Server: InfrastructureProtocol {}
public enum Cloud: InfrastructureProtocol {}

public struct Atlassian<Infrastructure: InfrastructureProtocol> {}

protocol ServiceProtocol {
    var user: User { get }
    init(withAuth user: User)
}

public protocol ProcessCategory {}
public enum Sprint: ProcessCategory {}
public enum Content: ProcessCategory {}

public extension Atlassian {
    struct Jira<Category: ProcessCategory>: ServiceProtocol {
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct JiraSoftware<Category: ProcessCategory>: ServiceProtocol {
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct JiraServiceDesk<Category: ProcessCategory>: ServiceProtocol {
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct Bitbucket<Category: ProcessCategory>: ServiceProtocol {
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct Confluence<Category: ProcessCategory>: ServiceProtocol {
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
}

public extension Atlassian where Infrastructure == Server {
    struct Bamboo<Category: ProcessCategory>: ServiceProtocol {
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct Crowd<Category: ProcessCategory>: ServiceProtocol {
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct FisheyeAndCrucible<Category: ProcessCategory>: ServiceProtocol {
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
}

public extension Atlassian where Infrastructure == Cloud {
    struct Organizations<Category: ProcessCategory>: ServiceProtocol {
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct UserManagement<Category: ProcessCategory>: ServiceProtocol {
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct UserProvisioning<Category: ProcessCategory>: ServiceProtocol {
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct Trello<Category: ProcessCategory>: ServiceProtocol {
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct StatusPage<Category: ProcessCategory>: ServiceProtocol {
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct Opsgenie<Category: ProcessCategory>: ServiceProtocol {
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
}
