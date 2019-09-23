import XCTest
@testable import SwiftyAtlassian

final class CommentTests: XCTestCase {}

// Test
extension CommentTests {
    func testDecodeCommentsJSON() {
        decode(json: commentsJSON, to: [Model.Comment].self)
    }
    
    static var allTests: [(String, (CommentTests) -> () -> ())] {
        return [("testDecodeCommentsJSON", testDecodeCommentsJSON)]
    }
}

// Test Data
private extension CommentTests {
    var commentsJSON: String {
        return """
            [
                {
                    "self": "http://www.example.com/jira/rest/api/2/issue/10010/comment/10000",
                    "id": "10000",
                    "author": {
                        "self": "http://www.example.com/jira/rest/api/2/user?username=fred",
                        "name": "fred",
                        "displayName": "Fred F. User",
                        "active": false
                    },
                    "body": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget venenatis elit. Duis eu justo eget augue iaculis fermentum. Sed semper quam laoreet nisi egestas at posuere augue semper.",
                    "updateAuthor": {
                        "self": "http://www.example.com/jira/rest/api/2/user?username=fred",
                        "name": "fred",
                        "displayName": "Fred F. User",
                        "active": false
                    },
                    "created": "2017-02-08T17:08:41.328+0000",
                    "updated": "2017-02-08T17:08:41.330+0000",
                    "visibility": {
                        "type": "role",
                        "value": "Administrators"
                    }
                }
            ]
            """
    }
}
