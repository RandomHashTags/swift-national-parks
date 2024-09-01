// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-national-parks",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v11),
        .iOS(.v14),
        .tvOS(.v14),
        .watchOS(.v7)
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
