import XCTest
@testable import SwiftyAtlassian

final class BoardTests: XCTestCase {}

// Test
extension BoardTests {
    func testDecodeBoardJSON1() {
        decode(json: boardJSON1, to: Model.Board.self)
    }
    
    func testDecodeBoardJSON2() {
        decode(json: boardJSON2, to: Model.Board.self)
    }
    
    func testDecodeBoardInContainerJSON() {
        decode(json: boardInContainerJSON, to: Model.ResponseContainer<[Model.Board]>.self)
    }
    
    static var allTests: [(String, (BoardTests) -> () -> ())] {
        return [("testDecodeBoardJSON1", testDecodeBoardJSON1),
                ("testDecodeBoardJSON2", testDecodeBoardJSON2),
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
