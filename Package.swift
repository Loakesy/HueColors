// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "HueColors",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "HueColors", targets: ["HueColors"]),
    ],
    targets: [
        .target(name: "HueColors", dependencies: []),
        .testTarget(name: "HueColorsTests", dependencies: ["HueColors"]),
    ]
)
