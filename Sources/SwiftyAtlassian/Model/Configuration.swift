import Foundation

public extension Model {
    struct Configuration: Decodable {
        public let id: Int
        public let name: String
        public let link: URL
        public let filter: Model.Configuration.Filter
        public let columnConfigs: [Model.Configuration.ColumnConfig]
        public let estimation: Model.Configuration.Estimation
        public let ranking: Model.Configuration.Ranking
    }
}

public extension Model.Configuration {
    enum CodingKeys: String, CodingKey {
        case id, name, filter, estimation, ranking
        case link = "self"
        case columnConfig
    }
    
    enum ColumnConfigKeys: String, CodingKey {
        case column = "columns"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        link = try container.decode(URL.self, forKey: .link)
        filter = try container.decode(Model.Configuration.Filter.self, forKey: .filter)
        estimation = try container.decode(Model.Configuration.Estimation.self, forKey: .estimation)
        ranking = try container.decode(Model.Configuration.Ranking.self, forKey: .ranking)
        let nestedContainer = try container.nestedContainer(keyedBy: ColumnConfigKeys.self, forKey: .columnConfig)
        columnConfigs = try nestedContainer.decode([Model.Configuration.ColumnConfig].self, forKey: .column)
    }
}
