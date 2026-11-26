// swift-tools-version:5.9
import PackageDescription

let bnbPackageVersion: Version = "1.18.7"

let package = Package(
    name: "BNBWrinkles",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "BNBWrinkles",
            targets: [
                "BNBWrinkles",
                "BNBWrinkles_BNBSdkCore",
                "BNBWrinkles_BNBEffectPlayer",
                "BNBWrinkles_BNBScripting",
                "BNBWrinkles_BNBFaceTracker",
                "BNBWrinkles_BNBSkin"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBFaceTracker.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBSkin.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBWrinkles",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.18.7/BNBWrinkles.zip",
            checksum: "91f54644b5ec383402c5f2b35d0bd70b01705ebc6a68ae95b1d05679acbf8315"
        ),
        .target(
            name: "BNBWrinkles_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBWrinkles_BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBWrinkles_BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
        .target(
            name: "BNBWrinkles_BNBFaceTracker",
            dependencies: [
                .product(
                    name: "BNBFaceTracker",
                    package: "BNBFaceTracker"
                ),
            ]
        ),
        .target(
            name: "BNBWrinkles_BNBSkin",
            dependencies: [
                .product(
                    name: "BNBSkin",
                    package: "BNBSkin"
                ),
            ]
        ),
    ]
)
