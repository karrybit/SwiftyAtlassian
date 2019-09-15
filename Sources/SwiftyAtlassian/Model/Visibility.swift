import Foundation

public extension Model {
    struct Visibility: Decodable {
        public enum `Type`: String, Decodable {
            case role, group
        }
        public let type: Type
        public let value: String
    }
}
