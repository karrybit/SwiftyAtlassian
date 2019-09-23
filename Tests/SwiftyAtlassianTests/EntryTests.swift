import XCTest
@testable import SwiftyAtlassian

final class EntryTests: XCTestCase {}

// Test
extension EntryTests {
    func testDecodeEntryJSON1() {
        decode(json: entryJSON1, to: Model.Entry.self)
    }
    
    func testDecodeEntryJSON2() {
        decode(json: entryJSON2, to: Model.Entry.self)
    }
    
    static var allTests: [(String, (EntryTests) -> () -> ())] {
        return [("testDecodeEntryJSON1", testDecodeEntryJSON1),
                ("testDecodeEntryJSON2", testDecodeEntryJSON2)]
    }
}

// Test Data
private extension EntryTests {
    var entryJSON1: String {
        return """
            {
                "issueId": 10000,
                "issueKey": "PR-1",
                "status": 200
            }
            """
    }
    
    var entryJSON2: String {
        return """
            {
                "issueId": 10002,
                "issueKey": "PR-3",
                "status": 503,
                "errors": [
                    "JIRA Agile cannot execute the rank operation at this time. Please try again later."
                ]
            }
            """
    }
}
