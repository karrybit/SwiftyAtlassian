import XCTest
@testable import SwiftyAtlassian

final class EstimationTests: XCTestCase {}

// Test
extension EstimationTests {
    func testDecodeEstimationJSON() {
        decode(json: estimationJSON, to: Model.Configuration.Estimation.self)
    }
    
    static var allTests: [(String, (EstimationTests) -> () -> ())] {
        return [("testDecodeEstimationJSON", testDecodeEstimationJSON)]
    }
}

// Test Data
private extension EstimationTests {
    var estimationJSON: String {
        return """
            {
                "type": "field",
                "field": {
                    "fieldId": "customfield_10002",
                    "displayName": "Story Points"
                }
            }
            """
    }
}
