import Foundation

public protocol TrelloAPI: API where ServiceType == Atlassian<Hosting.Cloud>.Trello {}

public extension Atlassian.Trello {
    static var servicePath: String {
        return "rest/api/"
    }
}
