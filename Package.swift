// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RichTextKit",
    platforms: [
        .iOS(.v14),
        .macOS(.v12),
        .tvOS(.v14),
        .watchOS(.v7)
    ],
    products: [
        .library(
            name: "RichTextKit",
            targets: ["RichTextKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/danielsaidi/MockingKit.git", .upToNextMajor(from: "1.1.0"))
    ],
    targets: [
        .target(
            name: "RichTextKit",
            dependencies: []),
        .testTarget(
            name: "RichTextKitTests",
            dependencies: ["RichTextKit", "MockingKit"]),
    ]
)
