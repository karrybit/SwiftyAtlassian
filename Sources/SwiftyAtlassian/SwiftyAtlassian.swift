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

public protocol EndPoint {}
public enum Sprint: EndPoint {}
public enum Content: EndPoint {}

public extension Atlassian {
    struct Jira<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct JiraSoftware<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct JiraServiceDesk<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct Bitbucket<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct Confluence<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
}

public extension Atlassian where Infra == Server {
    struct Bamboo<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct Crowd<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct FisheyeAndCrucible<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
}

public extension Atlassian where Infra == Cloud {
    struct Organizations<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct UserManagement<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct UserProvisioning<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct Trello<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct StatusPage<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
    
    struct Opsgenie<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
        public init(withAuth user: User) { self.user = user }
    }
}
