// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

struct PackageMetadata {
    static let version: String = "4.8.3"
    static let checksum: String = "a56795f21b3b51208a5185c0a007af5ba43bd861550b27debf179de25c8168cc"
}

let package = Package(
    name: "ChromeCastSPM",
    platforms: [.iOS(.v16), .macOS(.v13)],
    products: [
        .library(
            name: "ChromeCastSPM",
            targets: ["ChromeCastSPM"]),
    ],
    targets: [
        .binaryTarget(
            name: "ChromeCastSPM",
            url: "https://github.com/Fredposk/ChromeCastSPM/releases/download/\(PackageMetadata.version)/GoogleCastSDK-no-bluetooth.xcframework.zip",
            checksum: PackageMetadata.checksum
        )
    ]
)
