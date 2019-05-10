import XCTest
@testable import SwiftyAtlassian

final class SwiftyAtlassianTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SwiftyAtlassian().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
