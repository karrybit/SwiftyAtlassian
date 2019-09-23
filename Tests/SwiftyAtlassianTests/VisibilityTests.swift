import XCTest
@testable import SwiftyAtlassian

final class VisibilityTests: XCTestCase {}

// Test
extension VisibilityTests {
    func testDecodeVisibilityJSON() {
        decode(json: visibilityJSON, to: Model.Visibility.self)
    }
    
    static var allTests: [(String, (VisibilityTests) -> () -> ())] {
        return [("testDecodeVisibilityJSON", testDecodeVisibilityJSON)]
    }
}

// Test Data
private extension VisibilityTests {
    var visibilityJSON: String {
        return """
            {
                "type": "role",
                "value": "Administrators"
            }
            """
    }
}
