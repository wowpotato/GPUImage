// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GPUImage",
    products: [
        .library(
            name: "GPUImage",
            targets: ["GPUImage"]),
    ],
    targets: [
        .target(
            name: "GPUImage",
            dependencies: [],
            path: "Sources",
            publicHeadersPath: "include",
            swiftSettings: [
                .define("SWIFT_PACKAGE"),
                .unsafeFlags(["-suppress-warnings"])
            ],
            linkerSettings: [
                .unsafeFlags(["-Xlinker", "-no_application_extension"])
            ]
        ),
    ]
)
