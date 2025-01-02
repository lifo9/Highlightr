// swift-tools-version:5.10

import PackageDescription

let package = Package(
    name: "Highlightr",
    platforms: [
      .macOS(.v10_15), .iOS(.v13), .visionOS(.v1), .watchOS(.v7), .tvOS(.v12)
    ],
    products: [
        .library(
            name: "Highlightr",
            targets: ["Highlightr"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Highlightr",
            dependencies: [],
            path: "Pod",
            exclude: [
                "Assets/Highlighter/LICENSE",
            ],
            sources: [
                "Classes",
            ],
            resources: [
                .copy("Assets/Highlighter/highlight.min.js"),
                .copy("Assets/styles/github.min.css"),
                .copy("Assets/styles/github-dark.min.css"),
            ]
        ),
    ]
)
