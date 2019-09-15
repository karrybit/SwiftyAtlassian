import Foundation

public extension Model.Configuration {
    struct ColumnConfig: Decodable {
        public let name: String
        public let statuses: [Model.Configuration.ColumnConfig.Status]
    }
}

public extension Model.Configuration.ColumnConfig {
    struct Status: Decodable {
        public let id: Int
        public let link: URL
    }
}

public extension Model.Configuration.ColumnConfig.Status {
    enum CodingKeys: String, CodingKey {
        case id
        case link = "self"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let idString = try container.decode(String.self, forKey: .id)
        let link = try container.decode(URL.self, forKey: .link)
        
        self.init(id: Int(idString)!, link: link)
    }
}
