// swift-tools-version: 6.3
import PackageDescription

let package = Package(
    name: "GameRoomObjects",
    platforms: [.macOS(.v13)],
    products: [
        .library(
            name: "GameRoomObjects",
            targets: ["GameRoomObjects"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-distributed-tracing.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "GameRoomObjects",
            dependencies: [
                .product(name: "Tracing", package: "swift-distributed-tracing"),
            ]
        ),
        .testTarget(
            name: "GameRoomObjectsTests",
            dependencies: ["GameRoomObjects"]
        ),
    ]
)
