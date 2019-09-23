import XCTest
@testable import SwiftyAtlassian

final class ConfigurationTests: XCTestCase {}

// Test
extension ConfigurationTests {
    func testDecodeConfigurationJSON() {
        decode(json: configurationJSON, to: Model.Configuration.self)
    }
    
    static var allTests: [(String, (ConfigurationTests) -> () -> ())] {
        return [("testDecodeConfigurationJSON", testDecodeConfigurationJSON)]
    }
}

// Test Data
private extension ConfigurationTests {
    var configurationJSON: String {
        return """
            {
                "id": 10000,
                "name": "Board",
                "self": "http://www.example.com/jira/rest/agile/1.0/board/84/config",
                "filter": {
                    "id": "1001",
                    "self": "http://www.example.com/jira/filter/1001"
                },
                "columnConfig": {
                    "columns": [
                        {
                            "name": "To Do",
                            "statuses": [
                                {
                                    "id": "1",
                                    "self": "http://www.example.com/jira/status/1"
                                },
                                {
                                    "id": "4",
                                    "self": "http://www.example.com/jira/status/4"
                                }
                            ]
                        },
                        {
                            "name": "In progress",
                            "statuses": [
                                {
                                    "id": "3",
                                    "self": "http://www.example.com/jira/status/3"
                                }
                            ],
                            "min": 2,
                            "max": 4
                        },
                        {
                            "name": "Done",
                            "statuses": [
                                {
                                    "id": "5",
                                    "self": "http://www.example.com/jira/status/5"
                                }
                            ]
                        }
                    ],
                    "constraintType": "issueCount"
                },
                "estimation": {
                    "type": "field",
                    "field": {
                        "fieldId": "customfield_10002",
                        "displayName": "Story Points"
                    }
                },
                "ranking": {
                    "rankCustomFieldId": 10020
                }
            }
            """
    }
}
