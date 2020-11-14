import Foundation

public protocol BambooAPI: API where ServiceType == Atlassian<Hosting.SelfManaged>.Bamboo {}

public extension Atlassian.Bamboo {
    static var servicePath: String {
        return "rest/api/"
    }
}
