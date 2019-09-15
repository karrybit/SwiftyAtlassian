import Foundation

public extension Model.Configuration {
    struct Estimation: Decodable {
        public enum EstimationType: String, Decodable {
            case field
        }
        public let type: EstimationType
        public let field: Model.Configuration.Estimation.Field
    }
}

public extension Model.Configuration.Estimation {
    struct Field: Decodable {
        public let fieldID: String
        public let displayName: String
    }
}

public extension Model.Configuration.Estimation.Field {
    enum CodingKeys: String, CodingKey {
        case fieldID = "fieldId"
        case displayName
    }
}
