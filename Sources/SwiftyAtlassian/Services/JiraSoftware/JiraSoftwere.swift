import Foundation

public extension Atlassian.JiraSoftware {
    static var servicePath: String { "rest/agile/latest/" }
    
    struct Backlog: API {}
    struct Board: API {}
    struct Epic: API {}
    struct Issue: API {}
    struct Sprint: API {}
}

public extension Atlassian.JiraSoftware where Host == Hosting.Cloud {
    struct Bulk: API {
        public static var path: String { Atlassian.JiraSoftware.servicePath + "bulk" }
    }
    struct BulkRepository: API {
        public static var path: String { Atlassian.JiraSoftware.servicePath + "bulk_repository" }
    }
    struct BulkByProperties: API {
        public static var path: String { Atlassian.JiraSoftware.servicePath + "bulk_by_properties" }
    }
    struct ExistsByProperties: API {
        public static var path: String { Atlassian.JiraSoftware.servicePath + "bulk_by_properties" }
    }
    struct Flag: API {
        public static var path: String { Atlassian.JiraSoftware.servicePath + "bulk_by_properties" }
    }
    struct Pipelines: API {
        public static var path: String { Atlassian.JiraSoftware.servicePath + "bulk_by_properties" }
    }
}

