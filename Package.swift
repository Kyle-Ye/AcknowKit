// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AcknowKit",
    platforms: [.iOS(.v16), .macOS(.v13), .macCatalyst(.v16), .watchOS(.v9), .visionOS(.v1)],
    products: [
        .library(
            name: "AcknowKit",
            targets: ["AcknowKit"]
        ),
    ],
    targets: [
        .target(name: "AcknowKit"),
        .testTarget(
            name: "AcknowKitTests",
            dependencies: ["AcknowKit"]
        ),
    ]
)
