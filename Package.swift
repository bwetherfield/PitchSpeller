// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "PitchSpeller",
    products: [
        .library(name: "PitchSpeller", targets: ["PitchSpeller"])
    ],
    dependencies: [
        .package(url: "https://github.com/dn-m/Structure", from: "0.23.0"),
        .package(url: "https://github.com/dn-m/Music", .branch("pitchspeller-dependency")),
        .package(url: "https://github.com/dn-m/NotationModel", .branch("pitchspeller-dependency"))
        ],
    targets: [
        // Sources
        .target(name: "PitchSpeller", dependencies: ["DataStructures", "Pitch", "SpelledPitch"]),
        // Tests
        .testTarget(name: "PitchSpellerTests", dependencies: ["PitchSpeller"])
    ]
)
