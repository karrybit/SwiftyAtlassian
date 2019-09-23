import XCTest
@testable import SwiftyAtlassian

final class FilterTests: XCTestCase {}

// Test
extension FilterTests {
    func testDecodeFilterJSON() {
        decode(json: filterJSON, to: Model.Configuration.Filter.self)
    }
    
    static var allTests: [(String, (FilterTests) -> () -> ())] {
        return [("testDecodeFilterJSON", testDecodeFilterJSON)]
    }
}

// Test Data
private extension FilterTests {
    var filterJSON: String {
        return """
            {
                "id": "1001",
                "self": "http://www.example.com/jira/filter/1001"
            }
            """
    }
}
