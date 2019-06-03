// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "PitchSpeller",
    products: [
        .library(name: "PitchSpeller", targets: ["PitchSpeller"])
    ],
    dependencies: [
        .package(url: "https://github.com/dn-m/Structure", .branch("master")),
        .package(url: "https://github.com/dn-m/Music", .branch("master")),
        .package(url: "https://github.com/dn-m/NotationModel", .branch("master"))
        ],
    targets: [
        // Sources
        .target(name: "PitchSpeller", dependencies: ["DataStructures", "Pitch", "SpelledPitch"]),
        // Tests
        .testTarget(name: "PitchSpellerTests", dependencies: ["PitchSpeller"])
    ]
)
