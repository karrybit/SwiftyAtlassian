import XCTest
@testable import SwiftyAtlassian

final class SprintTests: XCTestCase {}

// Test
extension SprintTests {
    func testDecodeSprintJSON1() {
        let data = sprintJSON1.data(using: .utf8)!
        let result: Result<Model.Sprint, Error> = API.decode(.success(data))
        switch result {
        case .success(_):
            XCTAssert(true)
        case .failure(let error):
            debugPrint(error)
            XCTFail(error.localizedDescription)
        }
    }
    
    func testDecodeSprintJSON2() {
        let data = sprintJSON2.data(using: .utf8)!
        let result: Result<Model.Sprint, Error> = API.decode(.success(data))
        switch result {
        case .success(_):
            XCTAssert(true)
        case .failure(let error):
            debugPrint(error)
            XCTFail(error.localizedDescription)
        }
    }
    
    func testDecodeSprintInContainerJSON() {
        let data = sprintInContainerJSON.data(using: .utf8)!
        let result: Result<Model.ResponseContainer<[Model.Sprint]>, Error> = API.decode(.success(data))
        switch result {
        case .success(_):
            XCTAssert(true)
        case .failure(let error):
            debugPrint(error)
            XCTFail(error.localizedDescription)
        }
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
