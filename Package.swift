// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Publishblog",
    products: [
        .executable(
            name: "Publishblog",
            targets: ["Publishblog"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.6.0")
    ],
    targets: [
        .target(
            name: "Publishblog",
            dependencies: ["Publish"]
        )
    ]
)