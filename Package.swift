// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "DeclarativeUI",
  platforms: [
    .iOS(.v15)
  ],
  products: [
    .library(
      name: "DeclarativeUI",
      targets: ["DeclarativeUI"]
    ),
  ],
  dependencies: [],
  targets: [
    .target(
      name: "DeclarativeUI",
      dependencies: [
        .target(name: "DeclarativeBuilder"),
      ]
    ),
    .target(
      name: "DeclarativeBuilder",
      dependencies: []
    ),
    .testTarget(
      name: "DeclarativeUITests",
      dependencies: [
        .target(name: "DeclarativeUI")
      ]
    )
  ]
)
