// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "MapsSDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MapsSDK",
            targets: ["MapsSDK"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/googlemaps/google-maps-ios-utils.git", .upToNextMinor(from: "4.1.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "MapsSDK",
            url: "https://github.com/DVD2/maps-sdk-ios/releases/download/v0.0.0/MapsSDK.zip",
            checksum: "3143a854aa8d837a4a47b42fc62914ffe6934419c368d00bafb5534dc7ae5524"
        )
    ]
)
