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
    dependencies: [
        .package(url: "https://github.com/jpsim/Yams.git", from: "1.0.1"),
    ],
    targets: [
        .target(
            name: "SwiftyAtlassian",
            dependencies: ["Yams"],
            path: "Sources"
        ),
        .testTarget(
            name: "SwiftyAtlassianTests",
            dependencies: ["SwiftyAtlassian"],
            path: "Tests"
        )
    ]
)
