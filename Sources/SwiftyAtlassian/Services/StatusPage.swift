import Foundation

public protocol StatusPageAPI: API where ServiceType == Atlassian<Hosting.Cloud>.StatusPage {}

public extension Atlassian.StatusPage {
    static var servicePath: String {
        return "rest/api/"
    }
}
