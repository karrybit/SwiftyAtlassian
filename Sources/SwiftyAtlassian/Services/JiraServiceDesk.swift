import Foundation

public protocol JiraServiceDeskAPI: API where ServiceType == Atlassian<Hosting.SelfManaged>.JiraServiceDesk {}

public extension Atlassian.JiraServiceDesk {
    static var servicePath: String {
        return "rest/api/"
    }
}
