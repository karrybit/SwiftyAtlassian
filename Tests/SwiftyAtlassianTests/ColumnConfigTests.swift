import XCTest
@testable import SwiftyAtlassian

final class ColumnConfigTests: XCTestCase {}

// Test
extension ColumnConfigTests {
    func testDecodeColumnConfigJSON1() {
        decode(json: columnConfigJSON1, to: Model.Configuration.ColumnConfig.self)
    }
    
    func testDecodeColumnConfigJSON2() {
        decode(json: columnConfigJSON2, to: Model.Configuration.ColumnConfig.self)
    }
    
    func testDecodeColumnConfigJSON3() {
        decode(json: columnConfigJSON3, to: Model.Configuration.ColumnConfig.self)
    }
    
    static var allTests: [(String, (ColumnConfigTests) -> () -> ())] {
        return [("testDecodeColumnConfigJSON1", testDecodeColumnConfigJSON1),
                ("testDecodeColumnConfigJSON2", testDecodeColumnConfigJSON2),
                ("testDecodeColumnConfigJSON3", testDecodeColumnConfigJSON3)]
    }
}

// Test Data
private extension ColumnConfigTests {
    var columnConfigJSON1: String {
        return """
            {
                "name": "To Do",
                "statuses": [
                    {
                        "id": "1",
                        "self": "http://www.example.com/jira/status/1"
                    },
                    {
                        "id": "4",
                        "self": "http://www.example.com/jira/status/4"
                    }
                ]
            }
            """
    }
    
    var columnConfigJSON2: String {
        return """
            {
                "name": "In progress",
                "statuses": [
                    {
                        "id": "3",
                        "self": "http://www.example.com/jira/status/3"
                    }
                ],
                "min": 2,
                "max": 4
            }
            """
    }
    
    var columnConfigJSON3: String {
        return """
            {
                "name": "Done",
                "statuses": [
                    {
                        "id": "5",
                        "self": "http://www.example.com/jira/status/5"
                    }
                ]
            }
            """
    }
}
