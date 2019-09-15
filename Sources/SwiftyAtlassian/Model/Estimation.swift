import Foundation

public extension Model.Configuration {
    struct Estimation: Decodable {
        public enum EstimationType: String, Decodable {
            case field
        }
        let type: EstimationType
        let field: Model.Configuration.Estimation.Field
    }
}

public extension Model.Configuration.Estimation {
    struct Field: Decodable {
        let fieldID: String
        let displayName: String
    }
}

public extension Model.Configuration.Estimation.Field {
    enum CodingKeys: String, CodingKey {
        case fieldID = "fieldId"
        case displayName
    }
}
