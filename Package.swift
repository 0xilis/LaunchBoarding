// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LaunchBoarding",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "LaunchBoarding",
            targets: ["LaunchBoarding"]
        )
    ],
    targets: [
        .target(
            name: "LaunchBoarding",
            path: "Sources/LaunchBoarding",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("include"),
                .headerSearchPath(".")
            ],
            linkerSettings: [
                .linkedFramework("CoreText"),
                .linkedFramework("UIKit")
            ]
        )
    ]
)
