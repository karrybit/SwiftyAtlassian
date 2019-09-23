import XCTest
@testable import SwiftyAtlassian

final class ProjectCategoryTests: XCTestCase {}

// Test
extension ProjectCategoryTests {
    func testDecodeProjectCategoryJSON1() {
        decode(json: projectCategoryJSON1, to: Model.ProjectCategory.self)
    }
    
    func testDecodeProjectCategoryJSON2() {
        decode(json: projectCategoryJSON2, to: Model.ProjectCategory.self)
    }
    
    static var allTests: [(String, (ProjectCategoryTests) -> () -> ())] {
        return [("testDecodeProjectCategoryJSON1", testDecodeProjectCategoryJSON1),
                ("testDecodeProjectCategoryJSON2", testDecodeProjectCategoryJSON2)]
    }
}

// Test Data
private extension ProjectCategoryTests {
    var projectCategoryJSON1: String {
        return """
            {
                "self": "http://www.example.com/jira/rest/api/2/projectCategory/10000",
                "id": "10000",
                "name": "FIRST",
                "description": "First Project Category"
            }
            """
    }
    
    var projectCategoryJSON2: String {
        return """
            {
                "self": "http://www.example.com/jira/rest/api/2/projectCategory/10000",
                "id": "10000",
                "name": "FIRST",
                "description": "First Project Category"
            }
            """
    }
}
