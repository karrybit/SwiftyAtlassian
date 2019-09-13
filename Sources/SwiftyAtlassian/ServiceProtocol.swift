import Foundation

public protocol ServiceProtocol {
    static var servicePath: String { get }
}

public extension ServiceProtocol {
    static var servicePath: String {
        return "rest/api/"
    }
}
