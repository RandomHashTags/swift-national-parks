// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-national-parks",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v12),
        .iOS(.v15),
        .tvOS(.v15),
        .watchOS(.v8)
    ],
    products: [
        .library(
            name: "SwiftNationalParks",
            targets: ["SwiftNationalParks"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/RandomHashTags/swift-sovereign-states.git", from: "1.3.2"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftNationalParks",
            dependencies: [
                .product(name: "SwiftSovereignStates", package: "swift-sovereign-states"),
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "SwiftNationalParksTests",
            dependencies: ["SwiftNationalParks"]
        ),
    ]
)
