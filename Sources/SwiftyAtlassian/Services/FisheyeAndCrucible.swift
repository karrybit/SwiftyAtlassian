import Foundation

public protocol FisheyeAndCrucibleAPI: API where ServiceType == Atlassian<Hosting.SelfManaged>.FisheyeAndCrucible {}

public extension Atlassian.FisheyeAndCrucible {
    static var servicePath: String {
        return "rest/api/"
    }
}
