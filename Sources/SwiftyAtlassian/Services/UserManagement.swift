import Foundation

public protocol UserManagementAPI: API where ServiceType == Atlassian<Hosting.Cloud>.UserManagement {}

public extension Atlassian.UserManagement {
    static var servicePath: String {
        return "rest/api/"
    }
}
