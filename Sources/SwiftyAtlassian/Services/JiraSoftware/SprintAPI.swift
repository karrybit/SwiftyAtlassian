import Foundation

extension Atlassian.JiraSoftware.Sprint {
    static var path: String { Atlassian.JiraSoftware.servicePath + "sprint" }
}

public extension Atlassian.JiraSoftware.Sprint {
    static func create(config: Config, name: String, dateRange:(start: Date, end: Date)?, originBoardID: Int, dateFormatter: DateFormatter) -> Result<Model.Sprint, Error> {
        guard let urlString = urlString(), let url = URL(string: urlString) else {
            return .failure(URLError(.badURL))
        }
        
        let body: [String: Any] = {
            var body = [String: Any]()
            body["name"] = name
            body["originBoardId"] = originBoardID
            if let dateRange = dateRange {
                body["startDate"] = dateFormatter.string(from: dateRange.start)
                body["endDate"] = dateFormatter.string(from: dateRange.end)
            }
            return body
        }()

        let response = post(url: url, header: [:], body: body)
        return decode(response)
    }
    
    static func get(sprintID: Int) -> Result<Model.Sprint, Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(sprintID)") else {
            return .failure(URLError(.badURL))
        }
        
        let response = get(url: url, header: [:], body: [:])
        return decode(response)
    }
    
    static func update(sprintID: Int, state: Model.Sprint.State, name: String, dateRange: (start: Date, end: Date)?, completeDate: Date, dateFormatter: DateFormatter) -> Result<Model.Sprint, Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(sprintID)") else {
            return .failure(URLError(.badURL))
        }
        
        let body: [String: Any] = {
            var body = [String: Any]()
            body["state"] = state.rawValue
            body["name"] = name
            if let dateRange = dateRange {
                body["startDate"] = dateFormatter.string(from: dateRange.start)
                body["endDate"] = dateFormatter.string(from: dateRange.end)
            }
            body["completeDate"] = dateFormatter.string(from: completeDate)
            return body
        }()
        
        let response = put(url: url, header: [:], body: body)
        return decode(response)
    }
    
    static func partiallyUpdate(sprintID: Int, name: String) -> Result<Model.Sprint, Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(sprintID)") else {
            return .failure(URLError(.badURL))
        }
        
        let body: [String: Any] = ["name": name]

        let response = post(url: url, header: [:], body: body)
        return decode(response)
    }
    
    static func delete(sprintID: Int) -> Result<(), Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(sprintID)") else {
            return .failure(URLError(.badURL))
        }

        let response = delete(url: url, header: [:], body: [:])
        return decode(response)
    }
    
    static func moveIssues(sprintID: Int, issueIDs: [String]) -> Result<(), Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(sprintID)/issue") else {
            return .failure(URLError(.badURL))
        }
        
        let body: [String: Any] = ["issues": issueIDs]
        
        let response = post(url: url, header: [:], body: body)
        return decode(response)
    }
    
    static func getIssues(sprintID: Int, startAt: Int = 0, maxResults: Int = 50, jql: String = "*", isValidateQuery: Bool = true, fields: String = "", expand: [String] = []) -> Result<Model.Issue, Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(sprintID)/issue") else {
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
    
    static func swap(sprintID: Int, sprintToSwapWith toID: Int) -> Result<(), Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(sprintID)/swap") else {
            return .failure(URLError(.badURL))
        }
        
        let body: [String: Any] = ["sprintToSwapWith": toID]
        
        let response = post(url: url, header: [:], body: body)
        return decode(response)
    }
    
    static func getPropertiesKeys(sprintID: Int) -> Never {
        // TODO: not implemented
        fatalError("this API is not implemented")
    }
    
    static func deleteProperty(sprintID: Int, propertyKey: String) -> Result<(), Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(sprintID)/properties/\(propertyKey)") else {
            return .failure(URLError(.badURL))
        }
        
        let response = delete(url: url, header: [:], body: [:])
        return decode(response)
    }
    
    static func setProperty(sprintID: Int, propertyKey: String) -> Result<(), Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(sprintID)/properties/\(propertyKey)") else {
            return .failure(URLError(.badURL))
        }
        
        let response = put(url: url, header: [:], body: [:])
        return decode(response)
    }
    
    static func getProperty(sprintID: Int) -> Never {
        // TODO: not implemented
        fatalError("this API is not implemented")
    }
}
