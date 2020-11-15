import Foundation

extension Atlassian.JiraSoftware.Backlog {
    static var path: String { Atlassian.JiraSoftware.servicePath + "backlog" }
}

public extension Atlassian.JiraSoftware.Backlog {
    static func moveIssue(IDs: [String]) -> Result<(), Error> {
        guard let urlString = urlString(), let url = URL(string: urlString) else {
            return .failure(URLError(.badURL))
        }
        
        let body: [String: Any] = ["issues": IDs]
        
        let response = post(url: url, header: [:], body: body)
        return decode(response)
    }
}
