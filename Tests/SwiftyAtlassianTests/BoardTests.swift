import XCTest
@testable import SwiftyAtlassian

final class BoardTests: XCTestCase {}

// Test
extension BoardTests {
    func testDecodeJSON1() {
        let data = boardJSON1.data(using: .utf8)!
        let result: Result<Model.Board, Error> = API.decode(.success(data))
        switch result {
        case .success(_):
            XCTAssert(true)
        case .failure(let error):
            debugPrint(error)
            XCTFail(error.localizedDescription)
        }
    }
    
    func testDecodeJSON2() {
        let data = boardJSON2.data(using: .utf8)!
        let result: Result<Model.Board, Error> = API.decode(.success(data))
        switch result {
        case .success(_):
            XCTAssert(true)
        case .failure(let error):
            debugPrint(error)
            XCTFail(error.localizedDescription)
        }
    }
    
    func testDecodeBoardInContainerJSON() {
        let data = boardInContainerJSON.data(using: .utf8)!
        let result: Result<Model.ResponseContainer<[Model.Board]>, Error> = API.decode(.success(data))
        switch result {
        case .success(_):
            XCTAssert(true)
        case .failure(let error):
            debugPrint(error)
            XCTFail(error.localizedDescription)
        }
    }
    
    static var allTests: [(String, (BoardTests) -> () -> ())] {
        return [("testDecodeJSON1", testDecodeJSON1),
                ("testDecodeJSON2", testDecodeJSON2),
                ("testDecodeBoardInContainerJSON", testDecodeBoardInContainerJSON)]
    }
}

// TestData
private extension BoardTests {
    var boardJSON1: String {
        return """
            {
                "id": 84,
                "self": "http://www.example.com/jira/rest/agile/1.0/board/84",
                "name": "scrum board",
                "type": "scrum"
            }
            """
    }

    var boardJSON2: String {
        return """
            {
                "id": 92,
                "self": "http://www.example.com/jira/rest/agile/1.0/board/92",
                "name": "kanban board",
                "type": "kanban"
            }
            """
    }

    var boardInContainerJSON: String {
        return """
            {
                "maxResults": 2,
                "startAt": 1,
                "total": 5,
                "isLast": false,
                "values": [
                    {
                        "id": 84,
                        "self": "http://www.example.com/jira/rest/agile/1.0/board/84",
                        "name": "scrum board",
                        "type": "scrum"
                    },
                    {
                        "id": 92,
                        "self": "http://www.example.com/jira/rest/agile/1.0/board/92",
                        "name": "kanban board",
                        "type": "kanban"
                    }
                ]
            }
            """
    }
}
