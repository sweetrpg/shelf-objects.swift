// swift-tools-version: 6.3
import PackageDescription

let package = Package(
    name: "ShelfObjects",
    platforms: [.macOS(.v13)],
    products: [
        .library(
            name: "ShelfObjects",
            targets: ["ShelfObjects"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-distributed-tracing.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "ShelfObjects",
            dependencies: [
                .product(name: "Tracing", package: "swift-distributed-tracing"),
            ]
        ),
        .testTarget(
            name: "ShelfObjectsTests",
            dependencies: ["ShelfObjects"]
        ),
    ]
)
