import Foundation

public protocol InfrastructureProtocol {}
public enum Server: InfrastructureProtocol {}
public enum Cloud: InfrastructureProtocol {}

public struct Atlassian<Infrastructure: InfrastructureProtocol> {}

public extension Atlassian {
    struct Bitbucket: ServiceProtocol {}
    struct Confluence: ServiceProtocol {}
    struct Jira: ServiceProtocol {}
    struct JiraServiceDesk: ServiceProtocol {}
    struct JiraSoftware: ServiceProtocol {}
}

public extension Atlassian where Infrastructure == Server {
    struct Bamboo: ServiceProtocol {}
    struct Crowd: ServiceProtocol {}
    struct FisheyeAndCrucible: ServiceProtocol {}
}

public extension Atlassian where Infrastructure == Cloud {
    struct Opsgenie: ServiceProtocol {}
    struct Organizations: ServiceProtocol {}
    struct StatusPage: ServiceProtocol {}
    struct Trello: ServiceProtocol {}
    struct UserManagement: ServiceProtocol {}
    struct UserProvisioning: ServiceProtocol {}
}
