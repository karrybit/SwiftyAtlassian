import XCTest
@testable import SwiftyAtlassian

final class AuthorTests: XCTestCase {}

// Test
extension AuthorTests {
    func testDecodeAuthorJSON() {
        decode(json: authorJSON, to: Model.Author.self)
    }
    
    static var allTests: [(String, (AuthorTests) -> () -> ())] {
        return [("testDecodeAuthorJSON", testDecodeAuthorJSON)]
    }
}

// Test Data
private extension AuthorTests {
    var authorJSON: String {
        return """
            {
                "self": "http://www.example.com/jira/rest/api/2/user?username=fred",
                "name": "fred",
                "displayName": "Fred F. User",
                "active": false
            }
            """
    }
}
