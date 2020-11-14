import Foundation

extension Atlassian.JiraSoftware.Issue {
    static var path: String { Atlassian.JiraSoftware.servicePath + "issue" }
}

public extension Atlassian.JiraSoftware.Issue {
    static func getIssue(issueIdOrKey: String, fields: String, expand: String) -> Result<Model.Issue, Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(issueIdOrKey)") else {
            return .failure(URLError(.badURL))
        }
        
        let body: [String: Any] = {
            var body = [String: Any]()
            body["fields"] = fields
            body["expand"] = expand
            return body
        }()
        
        let response = get(url: url, header: [:], body: body)
        return decode(response)
    }
    
    static func getIssueEstimationForBoard(issueIdOrKey: String, boardID: Int) -> Never {
        // TODO: not implemented
        fatalError("this API is not implemented")
    }
    
    static func rankIssues(issueIDs: [String], rankBeforeEpic: String, rankCustomFieldID: Int) -> Result<Model.ResponseContainer<[Model.Entry]>, Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/rank") else {
            return .failure(URLError(.badURL))
        }
        
        let body: [String: Any] = {
            var body = [String: Any]()
            body["issues"] = issueIDs
            body["rankBeforeEpic"] = rankBeforeEpic
            body["rankCustomFieldID"] = rankCustomFieldID
            return body
        }()
        
        let response = put(url: url, header: [:], body: body)
        return decode(response)
    }
}
