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
    public struct Jira<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
    
    public struct JiraSoftware<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
    
    public struct JiraServiceDesk<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
    
    public struct Bitbucket<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
    
    public struct Confluence<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
}

public extension Atlassian where Infra == Server {
    public struct Bamboo<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
    
    public struct Crowd<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
    
    public struct FisheyeAndCrucible<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
}

public extension Atlassian where Infra == Cloud {
    public struct Organizations<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
    
    public struct UserManagement<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
    
    public struct UserProvisioning<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
    
    public struct Trello<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
    
    public struct StatusPage<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
    
    public struct Opsgenie<E: EndPoint>: ServiceProtocol {
        public typealias Service = E
        let user: User
    }
}

