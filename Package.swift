// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyAtlassian",
    products: [
        .library(
            name: "SwiftyAtlassian",
            targets: ["SwiftyAtlassian", "SANetwork", "Services", "Config"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jpsim/Yams.git", from: "1.0.1"),
    ],
    targets: [
        .target(
            name: "SwiftyAtlassian",
            dependencies: []),
        .target(
            name: "SANetwork",
            dependencies: []),
        .target(
            name: "Services",
            dependencies: ["SwiftyAtlassian", "SANetwork", "Config"]),
        .target(
            name: "Config",
            dependencies: ["Yams"]),
    ]
)
