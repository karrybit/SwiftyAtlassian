import XCTest
@testable import SwiftyAtlassian

final class TimeTrackingTests: XCTestCase {}

// Test
extension TimeTrackingTests {
    func testDecodeTimeTrackingJSON() {
        decode(json: timeTrackingJSON, to: Model.TimeTracking.self)
    }
    
    static var allTests: [(String, (TimeTrackingTests) -> () -> ())] {
        return [("testDecodeTimeTrackingJSON", testDecodeTimeTrackingJSON)]
    }
}

// Test Data
private extension TimeTrackingTests {
    var timeTrackingJSON: String {
        return """
            {
                "originalEstimate": "10m",
                "remainingEstimate": "3m",
                "timeSpent": "6m",
                "originalEstimateSeconds": 600,
                "remainingEstimateSeconds": 200,
                "timeSpentSeconds": 400
            }
            """
    }
}
