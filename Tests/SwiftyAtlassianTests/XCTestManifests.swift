import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SprintTests.allTests),
        testCase(BoardTests.allTests),
        testCase(EpicTests.allTests)
    ]
}
#endif
