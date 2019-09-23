import Foundation

public extension Model.Configuration {
    struct ColumnConfig: Decodable {
        public let name: String
        public let statuses: [Model.Configuration.ColumnConfig.Status]
        public let min: Int?
        public let max: Int?
    }
}

public extension Model.Configuration.ColumnConfig {
    struct Status: Decodable {
        public let id: String
        public let link: URL
    }
}

public extension Model.Configuration.ColumnConfig.Status {
    enum CodingKeys: String, CodingKey {
        case id
        case link = "self"
    }
}
