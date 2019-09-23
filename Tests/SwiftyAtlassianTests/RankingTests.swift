import XCTest
@testable import SwiftyAtlassian

final class RankingTests: XCTestCase {}

// Test
extension RankingTests {
    func testDecodeRankingJSON() {
        decode(json: rankingJSON, to: Model.Configuration.Ranking.self)
    }
    
    static var allTests: [(String, (RankingTests) -> () -> ())] {
        return [("testDecodeRankingJSON", testDecodeRankingJSON)]
    }
}

// Test Data
private extension RankingTests {
    var rankingJSON: String {
        return """
            {
                "rankCustomFieldId": 10020
            }
            """
    }
}
