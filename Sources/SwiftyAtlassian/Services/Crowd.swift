import Foundation

public protocol CrowdAPI: API where ServiceType == Atlassian<Hosting.SelfManaged>.Crowd {}

public extension Atlassian.Crowd {
    static var servicePath: String {
        return "rest/api/"
    }
}
