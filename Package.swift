// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Cogl",
    products: [
        .library(name: "Cogl", targets: ["Cogl"]),
    ],
    dependencies: [
        .package(url: "https://github.com/rhx/CCogl.git", .branch("master")),
        .package(url: "https://github.com/rhx/SwiftGObject.git", .branch("master")),
    ],
    targets: [
        .target(name: "Cogl", dependencies: ["GLibObject"]),
        .testTarget(name: "CoglTests", dependencies: ["Cogl"]),
    ]
)
