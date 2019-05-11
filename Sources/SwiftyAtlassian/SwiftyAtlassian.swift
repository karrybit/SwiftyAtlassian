public struct User {
    public init() {}
}

protocol AtlassianProtocol {
    associatedtype Infra
}

public protocol Infrastructure {}
public enum Server: Infrastructure {}
public enum Cloud: Infrastructure {}

public struct Atlassian<T: Infrastructure>: AtlassianProtocol {
    public typealias Infra = T
}

protocol ServiceProtocol {
    associatedtype Service
    var user: User { get }
    init(withAuth user: User)
}

public protocol Method {}
public enum Sprint: Method {}
public enum Content: Method {}

public extension Atlassian {
    struct Jira<M: Method>: ServiceProtocol {
        public typealias Service = M
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct JiraSoftware<M: Method>: ServiceProtocol {
        public typealias Service = M
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct JiraServiceDesk<M: Method>: ServiceProtocol {
        public typealias Service = M
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct Bitbucket<M: Method>: ServiceProtocol {
        public typealias Service = M
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct Confluence<M: Method>: ServiceProtocol {
        public typealias Service = M
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
}

public extension Atlassian where Infra == Server {
    struct Bamboo<M: Method>: ServiceProtocol {
        public typealias Service = M
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct Crowd<M: Method>: ServiceProtocol {
        public typealias Service = M
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct FisheyeAndCrucible<M: Method>: ServiceProtocol {
        public typealias Service = M
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
}

public extension Atlassian where Infra == Cloud {
    struct Organizations<M: Method>: ServiceProtocol {
        public typealias Service = M
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct UserManagement<M: Method>: ServiceProtocol {
        public typealias Service = M
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct UserProvisioning<M: Method>: ServiceProtocol {
        public typealias Service = M
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct Trello<M: Method>: ServiceProtocol {
        public typealias Service = M
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct StatusPage<M: Method>: ServiceProtocol {
        public typealias Service = M
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct Opsgenie<M: Method>: ServiceProtocol {
        public typealias Service = M
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
}
