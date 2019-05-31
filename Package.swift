// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "PickerKit",
    products: [
        .library(
            name: "PickerKit",
            targets: ["PickerKit"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "PickerKit",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "PickerKitTests",
            dependencies: ["PickerKit"],
            path: "Tests"
        ),
    ]
)
