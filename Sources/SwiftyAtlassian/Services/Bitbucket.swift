import Foundation

public protocol BitbucketAPI: API where ServiceType == Atlassian<Hosting.SelfManaged>.Bitbucket {}

public extension Atlassian.Bitbucket {
    static var servicePath: String {
        return "rest/api/"
    }
}
