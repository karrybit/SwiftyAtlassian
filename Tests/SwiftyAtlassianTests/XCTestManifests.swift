import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SprintTests.allTests),
        testCase(BoardTests.allTests),
        testCase(EpicTests.allTests),
//        testCase(ProjectTests.allTests),
        testCase(ProjectCategoryTests.allTests)
    ]
}
#endif
