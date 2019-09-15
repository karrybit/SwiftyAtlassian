import Foundation

public extension Model {
    struct AvatarURL: Decodable {
        public let xsmall: URL
        public let small: URL
        public let medium: URL
        public let large: URL
    }
}

public extension Model.AvatarURL {
    enum CodingKeys: String, CodingKey {
        case xsmall = "16x16"
        case small = "24x24"
        case medium = "32x32"
        case large = "48x48"
    }
}
