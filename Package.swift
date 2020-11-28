// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "GenerateWebsite",
    platforms: [
    .macOS(.v10_15),
  ],
  products: [
    .executable(name: "roland", targets: ["Roland"]),
  ],
  dependencies: [
    .package(url: "https://github.com/iwasrobbed/Down.git",  from: "0.9.0"),
    .package(url: "https://github.com/apple/swift-argument-parser.git",  from: "0.3.0"),
    .package(url: "https://github.com/vapor/leaf-kit.git",  from: "1.0.0"),
  ],
  targets: [      
    .target(name: "Roland", 
            dependencies: [
              "Down", 
              .product(name: "ArgumentParser", package: "swift-argument-parser"),
              .product(name: "LeafKit", package: "leaf-kit"),
            ],
            path: "roland"),
  ])
