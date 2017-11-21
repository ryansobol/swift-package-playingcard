// swift-tools-version:4.0

import PackageDescription

let package = Package(
  name: "PlayingCard",
  products: [
    .library(name: "PlayingCard", targets: ["PlayingCard"]),
  ],
  targets: [
    .target(name: "PlayingCard", dependencies: []),
    .testTarget(name: "PlayingCardTests", dependencies: ["PlayingCard"])
  ]
)
