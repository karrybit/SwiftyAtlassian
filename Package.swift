// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyAtlassian",
    products: [
        .library(
            name: "SwiftyAtlassian",
            targets: ["SwiftyAtlassian"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftyAtlassian",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "SwiftyAtlassianTests",
            dependencies: ["SwiftyAtlassian"],
            path: "Tests"
        )
    ]
)
