import Foundation

public protocol OpsgenieAPI: API where ServiceType == Atlassian<Hosting.Cloud>.Opsgenie {}

public extension Atlassian.Opsgenie {
    static var servicePath: String {
        return "rest/api/"
    }
}
