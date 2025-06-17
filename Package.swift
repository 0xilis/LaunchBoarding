// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LaunchBoarding",
    platforms: [.iOS(.v9)],
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
            cxxSettings: [
                .unsafeFlags(["-arch", "armv7"]),
                .unsafeFlags(["-arch", "armv7s"]), // Make it compile for armv7s
                .unsafeFlags(["-arch", "arm64"])
            ],
            linkerSettings: [
                .linkedFramework("CoreText"),
                .linkedFramework("UIKit")
            ]
        )
    ]
)
