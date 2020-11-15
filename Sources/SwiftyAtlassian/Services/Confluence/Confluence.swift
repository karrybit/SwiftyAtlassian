import Foundation

public extension Atlassian.Confluence {
    static var servicePath: String {
        return "rest/api/"
    }

    struct AccessMode: API {
        public static var path: String { Atlassian.Confluence.servicePath + "access_mode" }
    }
    struct Audit: API {
        public static var path: String { Atlassian.Confluence.servicePath + "audit" }
    }
    struct Content: API {}
    struct ContentBody: API {
        public static var path: String { Atlassian.Confluence.servicePath + "content_body" }
    }
    struct Group: API {
        public static var path: String { Atlassian.Confluence.servicePath + "group" }
    }
    struct LongTask: API {
        public static var path: String { Atlassian.Confluence.servicePath + "long_task" }
    }
    struct Search: API {
        public static var path: String { Atlassian.Confluence.servicePath + "search" }
    }
    struct Space: API {
        public static var path: String { Atlassian.Confluence.servicePath + "space" }
    }
    struct User: API {
        public static var path: String { Atlassian.Confluence.servicePath + "user" }
    }
}

public extension Atlassian.Confluence where Host == Hosting.Cloud {
    struct Experimental: API {
        public static var path: String { Atlassian.Confluence.servicePath + "experimental" }
    }
    struct Relation: API {
        public static var path: String { Atlassian.Confluence.servicePath + "relation" }
    }
    struct Settings: API {
        public static var path: String { Atlassian.Confluence.servicePath + "settings" }
    }
    struct Template: API {
        public static var path: String { Atlassian.Confluence.servicePath + "template" }
    }
}
