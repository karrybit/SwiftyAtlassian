import XCTest
@testable import SwiftyAtlassian

final class WorklogTests: XCTestCase {}

// Test
extension WorklogTests {
    func testDecodeWorklogJSON() {
        decode(json: worklogJSON, to: [Model.Worklog].self)
    }
    
    static var allTests: [(String, (WorklogTests) -> () -> ())] {
        return [("testDecodeWorklogJSON", testDecodeWorklogJSON)]
    }
}

// Test Data
private extension WorklogTests {
    var worklogJSON: String {
        return """
            [
                {
                    "self": "http://www.example.com/jira/rest/api/2/issue/10010/worklog/10000",
                    "author": {
                        "self": "http://www.example.com/jira/rest/api/2/user?username=fred",
                        "name": "fred",
                        "displayName": "Fred F. User",
                        "active": false
                    },
                    "updateAuthor": {
                        "self": "http://www.example.com/jira/rest/api/2/user?username=fred",
                        "name": "fred",
                        "displayName": "Fred F. User",
                        "active": false
                    },
                    "comment": "I did some work here.",
                    "updated": "2017-02-08T17:08:41.332+0000",
                    "visibility": {
                        "type": "group",
                        "value": "jira-developers"
                    },
                    "started": "2017-02-08T17:08:41.332+0000",
                    "timeSpent": "3h 20m",
                    "timeSpentSeconds": 12000,
                    "id": "100028",
                    "issueId": "10002"
                }
            ]
            """
    }
}
