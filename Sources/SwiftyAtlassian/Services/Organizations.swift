import Foundation

public protocol OrganizationsAPI: API where ServiceType == Atlassian<Hosting.Cloud>.Organizations {}

public extension Atlassian.Organizations {
    static var servicePath: String {
        return "rest/api/"
    }
}
