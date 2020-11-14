import Foundation

public protocol Hostable {}
public enum Hosting {
    public enum SelfManaged: Hostable {}
    public enum Cloud: Hostable {}
}

public struct Atlassian<Host: Hostable> {}

public extension Atlassian {
    struct Bitbucket: ServiceProtocol {}
    struct Confluence: ServiceProtocol {}
    struct Jira: ServiceProtocol {}
    struct JiraServiceDesk: ServiceProtocol {}
    struct JiraSoftware: ServiceProtocol {}
}

public extension Atlassian where Host == Hosting.SelfManaged {
    struct Bamboo: ServiceProtocol {}
    struct Crowd: ServiceProtocol {}
    struct FisheyeAndCrucible: ServiceProtocol {}
}

public extension Atlassian where Host == Hosting.Cloud {
    struct Opsgenie: ServiceProtocol {}
    struct Organizations: ServiceProtocol {}
    struct StatusPage: ServiceProtocol {}
    struct Trello: ServiceProtocol {}
    struct UserManagement: ServiceProtocol {}
    struct UserProvisioning: ServiceProtocol {}
}

public struct Model {}
