import Foundation

public protocol ConfluenceAPI: API where ServiceType == Atlassian<Hosting.SelfManaged>.Confluence {}

public extension Atlassian.Confluence {
    static var servicePath: String {
        return "rest/api/"
    }

    struct AccessMode: ConfluenceAPI {}
    struct Audit: ConfluenceAPI {}
    struct Content: ConfluenceAPI {}
    struct ContentBody: ConfluenceAPI {}
    struct Group: ConfluenceAPI {}
    struct LongTask: ConfluenceAPI {}
    struct Search: ConfluenceAPI {}
    struct Space: ConfluenceAPI {}
    struct User: ConfluenceAPI {}
}

public extension Atlassian.Confluence where Host == Hosting.Cloud {
    struct Experimental: ConfluenceAPI {}
    struct Relation: ConfluenceAPI {}
    struct Settings: ConfluenceAPI {}
    struct Template: ConfluenceAPI {}
}
