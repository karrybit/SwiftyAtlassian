import Foundation

public extension Model.Configuration {
    struct Filter: Decodable {
        public let id: Int
        public let link: URL
    }
}

public extension Model.Configuration.Filter {
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
