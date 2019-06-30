// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "PitchSpeller",
    products: [
        .library(name: "PitchSpeller", targets: ["PitchSpeller"])
    ],
    dependencies: [
        .package(url: "https://github.com/dn-m/Structure", .branch("pitchspeller-dependency")),
        .package(url: "https://github.com/dn-m/Music", from: "0.15.0"),
        .package(url: "https://github.com/dn-m/NotationModel", from: "0.8.0")
        ],
    targets: [
        // Sources
        .target(name: "PitchSpeller", dependencies: ["DataStructures", "Pitch", "SpelledPitch"]),
        // Tests
        .testTarget(name: "PitchSpellerTests", dependencies: ["PitchSpeller"])
    ]
)
