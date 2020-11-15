import Foundation

extension Atlassian.Confluence.Content {
    static var path: String { Atlassian.Confluence.servicePath + "content" }
}

public extension Atlassian.Confluence.Content {
    static func create(page: Model.Page) -> Result<(), Error> {
        guard let urlString = urlString(), let url = URL(string: urlString) else {
            return .failure(URLError(.badURL))
        }
        
        let body: [String: Any] = {
            var body: [String: Any] = [:]
            body["type"] = "page"
            body["title"] = page.title
            body["space"] = ["key": page.spaceKey]
            if let ancestorsKey = page.ancestorsKey {
                body["ancestors"] = [["id": ancestorsKey]]
            }
            body["body"] = ["storage": ["value": page.body, "representation": "storage"]]
            return body
        }()
        
        let response = post(url: url, header: [:], body: body)
        return decode(response)
    }
}
