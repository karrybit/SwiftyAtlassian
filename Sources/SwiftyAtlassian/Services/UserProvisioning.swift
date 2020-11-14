import Foundation

public protocol UserProvisioningAPI: API where ServiceType == Atlassian<Hosting.Cloud>.UserProvisioning {}

public extension Atlassian.UserProvisioning {
    static var servicePath: String {
        return "rest/api/"
    }
}
