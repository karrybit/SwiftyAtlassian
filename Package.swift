// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyAtlassian",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SwiftyAtlassian",
            targets: ["SwiftyAtlassian"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SwiftyAtlassian",
            dependencies: ["AtlassianProtocol", "Bamboo", "Bitbucket", "Confluence", "Crowd", "FisheyeAndCrucible", "Jira", "JiraServiceDesk", "JiraSoftwere", "Opsgenie", "Organizations", "StatusPage", "Trello", "UserManagement", "UserProvisioning", "Config"]),
        .target(
            name: "AtlassianProtocol",
            dependencies: ["Config"]),
        .target(
            name: "Bamboo",
            dependencies: ["AtlassianProtocol"]),
        .target(
            name: "Bitbucket",
            dependencies: ["AtlassianProtocol"]),
        .target(
            name: "Confluence",
            dependencies: ["AtlassianProtocol"]),
        .target(
            name: "Crowd",
            dependencies: ["AtlassianProtocol"]),
        .target(
            name: "FisheyeAndCrucible",
            dependencies: ["AtlassianProtocol"]),
        .target(
            name: "Jira",
            dependencies: ["AtlassianProtocol"]),
        .target(
            name: "JiraServiceDesk",
            dependencies: ["AtlassianProtocol"]),
        .target(
            name: "JiraSoftwere",
            dependencies: ["AtlassianProtocol"]),
        .target(
            name: "Opsgenie",
            dependencies: ["AtlassianProtocol"]),
        .target(
            name: "Organizations",
            dependencies: ["AtlassianProtocol"]),
        .target(
            name: "StatusPage",
            dependencies: ["AtlassianProtocol"]),
        .target(
            name: "Trello",
            dependencies: ["AtlassianProtocol"]),
        .target(
            name: "UserManagement",
            dependencies: ["AtlassianProtocol"]),
        .target(
            name: "UserProvisioning",
            dependencies: ["AtlassianProtocol"]),
        .target(
            name: "Config",
            dependencies: []),
        .testTarget(
            name: "SwiftyAtlassianTests",
            dependencies: ["SwiftyAtlassian"]),
    ]
)
