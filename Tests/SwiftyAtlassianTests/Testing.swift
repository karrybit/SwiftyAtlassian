import XCTest
@testable import SwiftyAtlassian

extension XCTestCase {
    func decode<T>(json: String, to: T.Type) where T: Decodable {
        let data = json.data(using: .utf8)!
        let serviceTypeForDecodeTest = Atlassian<Hosting.Cloud>.Jira.ApplicationProperties.self
        let result: Result<T, Error> = serviceTypeForDecodeTest.decode(.success(data))
        switch result {
        case .success(_):
            XCTAssert(true)
        case .failure(let error):
            debugPrint(error)
            XCTFail(error.localizedDescription)
        }
    }
}
