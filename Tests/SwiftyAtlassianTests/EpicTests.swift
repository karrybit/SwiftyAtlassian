import XCTest
@testable import SwiftyAtlassian

final class EpicTests: XCTestCase {}

// Test
extension EpicTests {
    func testDecodeEpicJSON() {
        let data = epicJSON.data(using: .utf8)!
        let result: Result<Model.Epic, Error> = API.decode(.success(data))
        switch result {
        case .success(_):
            XCTAssert(true)
        case .failure(let error):
            debugPrint(error)
            XCTFail(error.localizedDescription)
        }
    }
    
    static var allTests: [(String, (EpicTests) -> () -> ())] {
        return [("testDecodeEpicJSON", testDecodeEpicJSON)]
    }
}

// Test Data
private extension EpicTests {
    var epicJSON: String {
        return """
            {
                "id": 37,
                "self": "http://www.example.com/jira/rest/agile/1.0/epic/23",
                "name": "epic 1",
                "summary": "epic 1 summary",
                "color": {
                    "key": "color_4"
                },
                "done": true
            }
            """
    }
}
