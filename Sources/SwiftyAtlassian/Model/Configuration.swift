import Foundation

public extension Model {
    struct Configuration: Decodable {
        let id: Int
        let name: String
        let link: URL
        let filter: Model.Configuration.Filter
        let columnConfigs: [Model.Configuration.ColumnConfig]
        let estimation: Model.Configuration.Estimation
        let ranking: Model.Configuration.Ranking
    }
}
