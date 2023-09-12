// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

struct PackageMetadata {
    static let version: String = "4.8.2"
    static let checksum: String = "ff2836fbd0fa6eae5d886afd0729570a769874cde0f68c5e19331b5c74a190f8"
}

let package = Package(
    name: "ChromeCastSPM",
    platforms: [.iOS(.v15), .macOS(.v13)],
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
