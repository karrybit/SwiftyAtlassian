import Foundation

public protocol JiraSoftwareSelfManagedAPI: API where ServiceType == Atlassian<Hosting.SelfManaged>.JiraSoftware {}
public protocol JiraSoftwareCloudAPI: API where ServiceType == Atlassian<Hosting.SelfManaged>.JiraSoftware {}
public protocol JiraSoftwareAPI: JiraSoftwareSelfManagedAPI & JiraSoftwareCloudAPI {}

public extension Atlassian.JiraSoftware {
    static var servicePath: String {
        return "rest/agile/latest/"
    }
    
    struct Backlog: JiraSoftwareAPI {}
    struct Board: JiraSoftwareAPI {}
    struct Epic: JiraSoftwareAPI {}
    struct Issue: JiraSoftwareAPI {}
    struct Sprint: JiraSoftwareAPI {}
}

public extension Atlassian.JiraSoftware where Host == Hosting.Cloud {
    struct Bulk: JiraSoftwareAPI {}
    struct BulkRepository: JiraSoftwareAPI {}
    struct BulkByProperties: JiraSoftwareAPI {}
    struct ExistsByProperties: JiraSoftwareAPI {}
    struct Flag: JiraSoftwareAPI {}
    struct Pipelines: JiraSoftwareAPI {}
}
