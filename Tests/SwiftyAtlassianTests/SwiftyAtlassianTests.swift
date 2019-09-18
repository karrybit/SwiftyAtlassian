import XCTest
@testable import SwiftyAtlassian

final class SwiftyAtlassianTests: XCTestCase {
    let sprintJSON = """
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
    func testDecodeSprint() {
        let data = sprintJSON.data(using: .utf8)!
        let result: Result<Model.Sprint, Error> = API.decode(.success(data))
        if case .failure(let error) = result {
            debugPrint(error)
        }
        XCTAssertTrue(result.isSuccess())
    }
    
    static var allTests = [
        ("testDecodeSprint", testDecodeSprint),
    ]
}

extension Result {
    func isSuccess() -> Bool {
        switch self {
        case .success(_):
            return true
        case .failure(_):
            return false
        }
    }
}
