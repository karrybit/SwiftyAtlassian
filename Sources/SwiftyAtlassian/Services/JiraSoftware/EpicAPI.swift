import Foundation

extension Atlassian.JiraSoftware.Epic {
    static var path: String { Atlassian.JiraSoftware.servicePath + "epic" }
}

public extension Atlassian.JiraSoftware.Epic {
    static func createEpic() -> Never {
        // TODO: not implemented
        fatalError("this API is not implemented")
    }
    
    static func updateIssueSpecificFieldsOfEpic() -> Never {
        // TODO: not implemented
        fatalError("this API is not implemented")
    }
    
    static func deleteEpic() -> Never {
        // TODO: not implemented
        fatalError("this API is not implemented")
    }
    
    static func getEpic(epicIdOrKey: String) -> Result<Model.Epic, Error> {
        guard let urlString = urlString(), let url = URL(string: urlString) else {
            return .failure(URLError(.badURL))
        }
        
        let response = get(url: url, header: [:], body: [:])
        return decode(response)
    }
    
    static func partiallyUpdateEpic(epicIdOrKey: String, name: String, summary: String, color: String, isDone: Bool) -> Result<Model.Epic, Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(epicIdOrKey)") else {
            return .failure(URLError(.badURL))
        }
        
        let body: [String: Any] = {
            var body: [String: Any] = [:]
            body["name"] = name
            body["summary"] = summary
            body["done"] = isDone
            body["color"] = """
            {"key": "\(color)"}
            """
            return body
        }()
        
        let response = post(url: url, header: [:], body: body)
        return decode(response)
    }
    
    static func getIssuesForEpic(epicIdOrKey: String, startAt: Int = 0, maxResults: Int = 50, jql: String = "*", isValidateQuery: Bool = true, fields: String, expand: String) -> Result<Model.ResponseContainer<[Model.Issue]>, Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(epicIdOrKey)/issue") else {
            return .failure(URLError(.badURL))
        }
        
        let body: [String: Any] = {
            var body: [String: Any] = [:]
            body["startAt"] = startAt
            body["maxResults"] = maxResults
            body["jql"] = jql
            body["validateQuery"] = isValidateQuery
            body["fields"] = fields
            body["expand"] = expand
            return body
        }()
        
        let response = get(url: url, header: [:], body: body)
        return decode(response)
    }
    
    static func moveIssuesToEpic(epicIdOrKey: Int, issueIDs: [String]) -> Result<(), Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(epicIdOrKey)/issue") else {
            return .failure(URLError(.badURL))
        }
        
        let body: [String: Any] = ["issues": issueIDs]
        
        let response = post(url: url, header: [:], body: body)
        return decode(response)
    }
    
    static func rankEpics(epicIdOrKey: String, rankBeforeEpic: String, rankCustomFieldID: Int) -> Result<(), Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(epicIdOrKey)/rank") else {
            return .failure(URLError(.badURL))
        }
        
        let body: [String: Any] = {
            var body: [String: Any] = [:]
            body["rankBeforeEpic"] = rankBeforeEpic
            body["rankCustomFieldID"] = rankCustomFieldID
            return body
        }()
        
        let response = put(url: url, header: [:], body: body)
        return decode(response)
    }
    
    static func getIssuesWithoutEpic(startAt: Int = 0, maxResults: Int = 50, jql: String = "*", isValidateQuery: Bool = true, fields: String, expand: String) -> Result<Model.ResponseContainer<[Model.Issue]>, Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/none/issue") else {
            return .failure(URLError(.badURL))
        }
        
        let body: [String: Any] = {
            var body: [String: Any] = [:]
            body["startAt"] = startAt
            body["maxResults"] = maxResults
            body["jql"] = jql
            body["validateQuery"] = isValidateQuery
            body["fields"] = fields
            body["expand"] = expand
            return body
        }()
        
        let response = get(url: url, header: [:], body: body)
        return decode(response)
    }
    
    static func removeIssuesFromEpic(issueIDs: [String]) -> Result<(), Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/none/issue") else {
            return .failure(URLError(.badURL))
        }
        
        let body: [String: Any] = ["issues": issueIDs]
        
        let response = post(url: url, header: [:], body: body)
        return decode(response)
    }
}
