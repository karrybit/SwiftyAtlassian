import Foundation

public extension Model {
    struct Visibility: Decodable {
        public enum VisibilityType: String, Decodable {
            case role, group
        }
        public let type: VisibilityType
        public let value: String
    }
}
