import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SprintTests.allTests),
        testCase(BoardTests.allTests),
        testCase(EpicTests.allTests),
        testCase(ProjectTests.allTests),
        testCase(ProjectCategoryTests.allTests),
        testCase(AvatarURLTests.allTests),
        testCase(VersionTests.allTests),
        testCase(AuthorTests.allTests),
        testCase(VisibilityTests.allTests),
        testCase(CommentTests.allTests),
        testCase(WorklogTests.allTests)
    ]
}
#endif
