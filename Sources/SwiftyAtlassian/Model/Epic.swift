import Foundation

public extension Model {
    struct Epic: Decodable {
        public let id: Int
        public let link: URL
        public let name: String
        public let summary: String
        public let color: String
        public let isDone: Bool
    }
}

public extension Model.Epic {
    enum CodingKeys: String, CodingKey {
        case id, name, summary, color
        case link = "self"
        case isDone = "done"
    }
    
    enum ColorKeys: String, CodingKey {
        case color = "key"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let nestedContainer = try container.nestedContainer(keyedBy: ColorKeys.self, forKey: .color)
        self.id = try container.decode(Int.self, forKey: .id)
        self.link = try container.decode(URL.self, forKey: .link)
        self.name = try container.decode(String.self, forKey: .name)
        self.summary = try container.decode(String.self, forKey: .summary)
        self.color = try nestedContainer.decode(String.self, forKey: .color)
        self.isDone = try container.decode(Bool.self, forKey: .isDone)
    }
}
