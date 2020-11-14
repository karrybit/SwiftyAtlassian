import Foundation

public extension Atlassian.Confluence {
    struct AccessMode: API {}
    struct Audit: API {}
    struct Content: API {}
    struct ContentBody: API {}
    struct Group: API {}
    struct LongTask: API {}
    struct Search: API {}
    struct Space: API {}
    struct User: API {}
}

public extension Atlassian.Confluence where Infrastructure == Hosting.Cloud {
    struct Experimental: API {}
    struct Relation: API {}
    struct Settings: API {}
    struct Template: API {}
}
