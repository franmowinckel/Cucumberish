// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Cucumberish",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Cucumberish",
            targets: ["CucumberishSwift", "Cucumberish"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CucumberishSwift",
            dependencies: ["Cucumberish"],
            path: "Sources/CucumberishSwift"
        ),
        .target(
            name: "Cucumberish",
            dependencies: ["Gherkin"]
        ),
        .target(
            name: "Gherkin",
            resources: [
                        .copy("resources/gherkin-languages.json")]
        )
    ]
)
