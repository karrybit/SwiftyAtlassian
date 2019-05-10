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
    init(user: User)
}

extension ServiceProtocol {
    public init(withAuth user: User) {
        self.init(user: user)
    }
}

public protocol EndPoint {}
public enum Sprint: EndPoint {}
public enum Content: EndPoint {}

public extension Atlassian {
    struct Jira<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
    
    struct JiraSoftware<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
    
    struct JiraServiceDesk<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
    
    struct Bitbucket<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
    
    struct Confluence<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
}

public extension Atlassian where Infra == Server {
    struct Bamboo<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
    
    struct Crowd<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
    
    struct FisheyeAndCrucible<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
}

public extension Atlassian where Infra == Cloud {
    struct Organizations<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
    
    struct UserManagement<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
    
    struct UserProvisioning<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
    
    struct Trello<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
    
    struct StatusPage<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
    
    struct Opsgenie<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
}

