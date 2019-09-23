import XCTest
@testable import SwiftyAtlassian

final class AvatarURLTests: XCTestCase {}

// Test
extension AvatarURLTests {
    func testDecodeAvatarURLsJSON1() {
        decode(json: avatarURLsJSON1, to: Model.AvatarURL.self)
    }
    
    func testDecodeAvatarURLsJSON2() {
        decode(json: avatarURLsJSON2, to: Model.AvatarURL.self)
    }
}

// Test Data
private extension AvatarURLTests {
    var avatarURLsJSON1: String {
        return """
            {
                "48x48": "http://www.example.com/jira/secure/projectavatar?size=large&pid=10000",
                "24x24": "http://www.example.com/jira/secure/projectavatar?size=small&pid=10000",
                "16x16": "http://www.example.com/jira/secure/projectavatar?size=xsmall&pid=10000",
                "32x32": "http://www.example.com/jira/secure/projectavatar?size=medium&pid=10000"
            }
            """
    }
    
    var avatarURLsJSON2: String {
        return """
            {
                "48x48": "http://www.example.com/jira/secure/projectavatar?size=large&pid=10001",
                "24x24": "http://www.example.com/jira/secure/projectavatar?size=small&pid=10001",
                "16x16": "http://www.example.com/jira/secure/projectavatar?size=xsmall&pid=10001",
                "32x32": "http://www.example.com/jira/secure/projectavatar?size=medium&pid=10001"
            }
            """
    }
}
