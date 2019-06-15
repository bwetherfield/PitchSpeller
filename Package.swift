// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "PitchSpeller",
    products: [
        .library(name: "PitchSpeller", targets: ["PitchSpeller"])
    ],
    dependencies: [
        .package(url: "https://github.com/dn-m/Structure", .exact("0.22.0")),
        .package(url: "https://github.com/dn-m/Music", .exact("0.13.1")),
        .package(url: "https://github.com/dn-m/NotationModel", .branch("pitchspeller-dependency"))
        ],
    targets: [
        // Sources
        .target(name: "PitchSpeller", dependencies: ["DataStructures", "Pitch", "SpelledPitch"]),
        // Tests
        .testTarget(name: "PitchSpellerTests", dependencies: ["PitchSpeller"])
    ]
)
