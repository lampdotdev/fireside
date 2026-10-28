// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Fireside",
    platforms: [.macOS(.v14)],
    targets: [
        .executableTarget(name: "Fireside", path: "Sources"),
        .executableTarget(name: "FiresideShare", path: "Share",
                          swiftSettings: [.unsafeFlags(["-application-extension"])],
                          linkerSettings: [.unsafeFlags(["-Xlinker", "-e", "-Xlinker", "_NSExtensionMain"])]),
    ]
)
