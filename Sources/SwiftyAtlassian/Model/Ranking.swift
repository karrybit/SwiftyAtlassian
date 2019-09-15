import Foundation

public extension Model.Configuration {
    struct Ranking: Decodable {
        public let rankCustomFieldID: Int
    }
}

public extension Model.Configuration.Ranking {
    enum CodingKeys: String, CodingKey {
        case rankCustomFieldID = "rankCustomFieldId"
    }
}
