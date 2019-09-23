import XCTest
@testable import SwiftyAtlassian

final class ProjectTests: XCTestCase {}

// Test
extension ProjectTests {
    func testDecodeProjectJSON1() {
        decode(json: projectJSON1, to: Model.Project.self)
    }
    
    func testDecodeProjectJSON2() {
        decode(json: projectJSON2, to: Model.Project.self)
    }
    
    func testDecodeProjectInContainerJSON() {
        decode(json: projectInContainerJSON, to: Model.ResponseContainer<[Model.Project]>.self)
    }
    
    static var allTests: [(String, (ProjectTests) -> () -> ())] {
        return [("testDecodeProjectJSON1", testDecodeProjectJSON1),
                ("testDecodeProjectJSON2", testDecodeProjectJSON2),
                ("testDecodeProjectInContainerJSON", testDecodeProjectInContainerJSON)]
    }
}

// Test Data
private extension ProjectTests {
    var projectJSON1: String {
        return """
            {
                "self": "http://www.example.com/jira/rest/api/2/project/EX",
                "id": "10000",
                "key": "EX",
                "name": "Example",
                "avatarUrls": {
                    "48x48": "http://www.example.com/jira/secure/projectavatar?size=large&pid=10000",
                    "24x24": "http://www.example.com/jira/secure/projectavatar?size=small&pid=10000",
                    "16x16": "http://www.example.com/jira/secure/projectavatar?size=xsmall&pid=10000",
                    "32x32": "http://www.example.com/jira/secure/projectavatar?size=medium&pid=10000"
                },
                "projectCategory": {
                    "self": "http://www.example.com/jira/rest/api/2/projectCategory/10000",
                    "id": "10000",
                    "name": "FIRST",
                    "description": "First Project Category"
                }
            }
            """
    }
    
    var projectJSON2: String {
        return """
            {
                "self": "http://www.example.com/jira/rest/api/2/project/ABC",
                "id": "10001",
                "key": "ABC",
                "name": "Alphabetical",
                "avatarUrls": {
                    "48x48": "http://www.example.com/jira/secure/projectavatar?size=large&pid=10001",
                    "24x24": "http://www.example.com/jira/secure/projectavatar?size=small&pid=10001",
                    "16x16": "http://www.example.com/jira/secure/projectavatar?size=xsmall&pid=10001",
                    "32x32": "http://www.example.com/jira/secure/projectavatar?size=medium&pid=10001"
                },
                "projectCategory": {
                    "self": "http://www.example.com/jira/rest/api/2/projectCategory/10000",
                    "id": "10000",
                    "name": "FIRST",
                    "description": "First Project Category"
                }
            }
            """
    }
    
    var projectInContainerJSON: String {
        return """
            {
                "maxResults": 10,
                "startAt": 0,
                "total": 2,
                "isLast": true,
                "values": [
                    {
                        "self": "http://www.example.com/jira/rest/api/2/project/EX",
                        "id": "10000",
                        "key": "EX",
                        "name": "Example",
                        "avatarUrls": {
                            "48x48": "http://www.example.com/jira/secure/projectavatar?size=large&pid=10000",
                            "24x24": "http://www.example.com/jira/secure/projectavatar?size=small&pid=10000",
                            "16x16": "http://www.example.com/jira/secure/projectavatar?size=xsmall&pid=10000",
                            "32x32": "http://www.example.com/jira/secure/projectavatar?size=medium&pid=10000"
                        },
                        "projectCategory": {
                            "self": "http://www.example.com/jira/rest/api/2/projectCategory/10000",
                            "id": "10000",
                            "name": "FIRST",
                            "description": "First Project Category"
                        }
                    },
                    {
                        "self": "http://www.example.com/jira/rest/api/2/project/ABC",
                        "id": "10001",
                        "key": "ABC",
                        "name": "Alphabetical",
                        "avatarUrls": {
                            "48x48": "http://www.example.com/jira/secure/projectavatar?size=large&pid=10001",
                            "24x24": "http://www.example.com/jira/secure/projectavatar?size=small&pid=10001",
                            "16x16": "http://www.example.com/jira/secure/projectavatar?size=xsmall&pid=10001",
                            "32x32": "http://www.example.com/jira/secure/projectavatar?size=medium&pid=10001"
                        },
                        "projectCategory": {
                            "self": "http://www.example.com/jira/rest/api/2/projectCategory/10000",
                            "id": "10000",
                            "name": "FIRST",
                            "description": "First Project Category"
                        }
                    }
                ]
            }
            """
    }
}
