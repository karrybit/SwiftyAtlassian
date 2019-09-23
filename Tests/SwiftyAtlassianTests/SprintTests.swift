import XCTest
@testable import SwiftyAtlassian

final class SprintTests: XCTestCase {}

// Test
extension SprintTests {
    func testDecodeSprintJSON1() {
        decode(json: sprintJSON1, to: Model.Sprint.self)
    }
    
    func testDecodeSprintJSON2() {
        decode(json: sprintJSON2, to: Model.Sprint.self)
    }
    
    func testDecodeSprintInContainerJSON() {
        decode(json: sprintInContainerJSON, to: Model.ResponseContainer<[Model.Sprint]>.self)
    }
    
    static var allTests: [(String, (SprintTests) -> () -> ())]  {
        return [("testDecodeSprintJSON1", testDecodeSprintJSON1),
                ("testDecodeSprintJSON2", testDecodeSprintJSON2),
                ("testDecodeSprintInContainerJSON", testDecodeSprintInContainerJSON)]
    }
}

// TestData
private extension SprintTests {
    var sprintJSON1: String {
        return """
            {
                "id": 37,
                "self": "http://www.example.com/jira/rest/agile/1.0/sprint/23",
                "state": "future",
                "name": "sprint 1",
                "startDate": "2015-04-11T15:22:00.000+10:00",
                "endDate": "2015-04-20T01:22:00.000+10:00",
                "originBoardId": 5
            }
            """
    }
    
    var sprintJSON2: String {
        return """
            {
                "id": 72,
                "self": "http://www.example.com/jira/rest/agile/1.0/sprint/73",
                "state": "future",
                "name": "sprint 2"
            }
            """
    }
    
    var sprintInContainerJSON: String {
        return """
            {
                "maxResults": 2,
                "startAt": 1,
                "total": 5,
                "isLast": false,
                "values": [
                    {
                        "id": 37,
                        "self": "http://www.example.com/jira/rest/agile/1.0/sprint/23",
                        "state": "closed",
                        "name": "sprint 1",
                        "startDate": "2015-04-11T15:22:00.000+10:00",
                        "endDate": "2015-04-20T01:22:00.000+10:00",
                        "completeDate": "2015-04-20T11:04:00.000+10:00",
                        "originBoardId": 5
                    },
                    {
                        "id": 72,
                        "self": "http://www.example.com/jira/rest/agile/1.0/sprint/73",
                        "state": "future",
                        "name": "sprint 2"
                    }
                ]
            }
            """
    }
}
