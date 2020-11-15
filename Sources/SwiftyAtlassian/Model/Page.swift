import Foundation

public extension Model {
    struct Page {
        public let title: String
        public let body: String
        public let spaceKey: String
        public let ancestorsKey: String?
        
        public init(title: String, body: String, spaceKey: String, ancestorsKey: String?) {
            self.title = title
            self.body = body
            self.spaceKey = spaceKey
            self.ancestorsKey = ancestorsKey?.isEmpty == true ? nil : ancestorsKey
        }
    }
}
