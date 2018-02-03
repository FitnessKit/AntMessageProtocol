// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ANTMessageProtocol",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "ANTMessageProtocol",
            targets: ["ANTMessageProtocol"]),
        ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/FitnessKit/FitnessUnits", from: "1.2.0"),
        .package(url: "https://github.com/FitnessKit/DataDecoder", from: "4.0.3"),
        ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "ANTMessageProtocol",
            dependencies: [
                "FitnessUnits",
                "DataDecoder",
                ]
        ),
        .testTarget(
            name: "ANTMessageProtocolTests",
            dependencies: ["ANTMessageProtocol"]),
        ],
    swiftLanguageVersions: [3, 4]
)
