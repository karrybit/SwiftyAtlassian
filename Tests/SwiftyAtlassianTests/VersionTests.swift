import XCTest
@testable import SwiftyAtlassian

final class VersionTests: XCTestCase {}

// Test
extension VersionTests {
    func testDecodeVersionJSON1() {
        decode(json: versionJSON1, to: Model.Version.self)
    }
    
    func testDecodeVersionJSON2() {
        decode(json: versionJSON2, to: Model.Version.self)
    }
    
    func testDecodeVersionInContainerJSON() {
        decode(json: versionInContainerJSON, to: Model.ResponseContainer<[Model.Version]>.self)
    }
}

// Test Data
private extension VersionTests {
    var versionJSON1: String {
        return """
            {
                "self": "http://www.example.com/jira/version/10000",
                "id": 10000,
                "projectId": 10000,
                "name": "Version 1",
                "description": "A first version",
                "archived": false,
                "released": true,
                "releaseDate": "2015-04-20T01:02:00.000+10:00"
            }
            """
    }
    
    var versionJSON2: String {
        return """
            {
                "self": "http://www.example.com/jira/version/10010",
                "id": 10010,
                "projectId": 10000,
                "name": "Next Version",
                "description": "Minor Bugfix version",
                "archived": false,
                "released": false
            }
            """
    }
    
    var versionInContainerJSON: String {
        return """
            {
                "maxResults": 2,
                "startAt": 1,
                "total": 5,
                "isLast": false,
                "values": [
                    {
                        "self": "http://www.example.com/jira/version/10000",
                        "id": 10000,
                        "projectId": 10000,
                        "name": "Version 1",
                        "description": "A first version",
                        "archived": false,
                        "released": true,
                        "releaseDate": "2015-04-20T01:02:00.000+10:00"
                    },
                    {
                        "self": "http://www.example.com/jira/version/10010",
                        "id": 10010,
                        "projectId": 10000,
                        "name": "Next Version",
                        "description": "Minor Bugfix version",
                        "archived": false,
                        "released": false
                    }
                ]
            }
            """
    }
}
