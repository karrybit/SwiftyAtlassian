import Foundation

extension Atlassian.JiraSoftware.Board {
    static var path: String { Atlassian.JiraSoftware.servicePath + "board" }
}

public extension Atlassian.JiraSoftware.Board {
    static func getAllBoards(startAt: Int = 0, maxResults: Int = 50, type: Model.Board.BoardType, name: String, projectKeyOrID: String = "*") -> Result<Model.ResponseContainer<[Model.Board]>, Error> {
        
        guard let urlString = urlString(), let url = URL(string: urlString) else {
            return .failure(URLError(.badURL))
        }
        
        let body: [String: Any] = {
            var body: [String: Any] = [:]
            body["startAt"] = startAt
            body["maxResults"] = maxResults
            body["type"] = type.rawValue
            body["name"] = name
            body["projectKeyOrId"] = projectKeyOrID
            return body
        }()
        
        let response = get(url: url, header: [:], body: body)
        return decode(response)
    }
    
    static func createBoard(name: String, type: Model.Board.BoardType, filterID: Int) -> Result<Model.Board, Error> {
        guard let urlString = urlString(), let url = URL(string: urlString) else {
            return .failure(URLError(.badURL))
        }

        let body: [String: Any] = {
            var body: [String: Any] = [:]
            body["name"] = name
            body["type"] = type.rawValue
            body["filterId"] = filterID
            return body
        }()

        let response = post(url: url, header: [:], body: body)
        return decode(response)
    }
    
    static func getBoard(id: Int) -> Result<Model.Board, Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(id)") else {
            return .failure(URLError(.badURL))
        }
        
        let response = get(url: url, header: [:], body: [:])
        return decode(response)
    }
    
    static func deleteBoard(id: Int) -> Result<(), Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(id)") else {
            return .failure(URLError(.badURL))
        }

        let response = delete(url: url, header: [:], body: [:])
        return decode(response)
    }
    
    static func getIssuesForBacklog(boardID: Int, startAt: Int = 0, maxResults: Int = 50, jql: String = "*", isValidateQuery: Bool = true, fields: String, expand: String) -> Result<Model.ResponseContainer<[Model.Issue]>, Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(boardID)/backlog") else {
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
    
    static func getConfiguration(boardID: Int) -> Result<Model.Configuration, Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(boardID)/configuration") else {
            return .failure(URLError(.badURL))
        }
        
        let response = get(url: url, header: [:], body: [:])
        return decode(response)
    }
    
    static func getIssuesForBoard(boardID: Int, startAt: Int = 0, maxResults: Int = 50, jql: String = "*", isValidateQuery: Bool = true, fields: String, expand: String) -> Result<Model.ResponseContainer<[Model.Issue]>, Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(boardID)/issue") else {
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
    
    static func getEpic(boardID: Int, startAt: Int = 0, maxResults: Int = 50, isDone: Bool) -> Result<Model.ResponseContainer<[Model.Epic]>, Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(boardID)/epic") else {
            return .failure(URLError(.badURL))
        }

        let body: [String: Any] = {
            var body: [String: Any] = [:]
            body["startAt"] = startAt
            body["maxResults"] = maxResults
            body["done"] = isDone
            return body
        }()
        
        let response = get(url: url, header: [:], body: body)
        return decode(response)
    }
    
    static func getIssuesForEpic(epicID: Int, startAt: Int = 0, maxResults: Int = 50, jql: String = "*", isValidateQuery: Bool = true, fields: String, expand: String) -> Result<Model.ResponseContainer<[Model.Issue]>, Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(epicID)/epic") else {
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
    
    static func getIssuesWithoutEpic(boardID: Int, startAt: Int = 0, maxResults: Int = 50, jql: String = "*", isValidateQuery: Bool = true, fields: String, expand: String) -> Result<Model.ResponseContainer<[Model.Issue]>, Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(boardID)/epic/none/issue") else {
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
    
    static func getProject(boardID: Int, startAt: Int = 0, maxResults: Int = 50) -> Result<Model.ResponseContainer<[Model.Project]>, Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(boardID)/project") else {
            return .failure(URLError(.badURL))
        }
        
        let body: [String: Any] = {
            var body: [String: Any] = [:]
            body["startAt"] = startAt
            body["maxResults"] = maxResults
            return body
        }()
        
        let response = get(url: url, header: [:], body: body)
        return decode(response)
    }
    
    static func getPropertiesKeys(boardID: Int) -> Never {
        // TODO: not implemented
        fatalError("this API is not implemented")
    }
    
    static func deleteProperty(boardID: Int, propertyKey: String) -> Result<(), Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(boardID)/properties/\(propertyKey)") else {
            return .failure(URLError(.badURL))
        }
        
        let response = delete(url: url, header: [:], body: [:])
        return decode(response)
    }
    
    static func setProperty(boardID: Int, propertyKey: String) -> Result<(), Error> {
        // TODO: not implemented
        fatalError("this API is not implemented")
    }
    
    static func getProperty(boardID: Int, propertyKey: String) -> Never {
        // TODO: not implemented
        fatalError("this API is not implemented")
    }
    
    static func getAllSprints(boardID: Int, startAt: Int = 0, maxResults: Int = 50, state: Model.Sprint.State) -> Result<Model.ResponseContainer<[Model.Sprint]>, Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(boardID)/sprint") else {
            return .failure(URLError(.badURL))
        }
        
        let body: [String: Any] = {
            var body: [String: Any] = [:]
            body["startAt"] = startAt
            body["maxResults"] = maxResults
            body["state"] = state.rawValue
            return body
        }()
        
        let response = get(url: url, header: [:], body: body)
        return decode(response)
    }
    
    static func getIssuesForSprint(boardID: Int, sprintID: Int, startAt: Int = 0, maxResults: Int = 50, jql: String = "*", isValidateQuery: Bool = true, fields: String, expand: String) -> Result<Model.ResponseContainer<[Model.Issue]>, Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(boardID)/sprint/\(sprintID)/issue") else {
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
    
    static func getAllVersions(boardID: Int, startAt: Int = 0, maxResults: Int = 50, isReleased: Bool) -> Result<Model.ResponseContainer<[Model.Version]>, Error> {
        guard let urlString = urlString(), let url = URL(string: "\(urlString)/\(boardID)/version") else {
            return .failure(URLError(.badURL))
        }

        let body: [String: Any] = {
            var body: [String: Any] = [:]
            body["startAt"] = startAt
            body["maxResults"] = maxResults
            body["released"] = isReleased
            return body
        }()
        
        let response = get(url: url, header: [:], body: body)
        return decode(response)
    }
}
