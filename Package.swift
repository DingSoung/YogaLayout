// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "YogaKit",
    platforms: [
        .iOS(.v8)
    ],
    products: [
        .library(name: "YogaKit", 
                type: .dynamic,
                targets: ["YogaKit"]
        )
    ],
    dependencies: [],
    targets: [
        .target(name: "YogaKit",
                path: "Sources",
                exclude: [],
                sources: ["Core", "Dependencies/OneDependency/OneDependency.m"],
                publicHeadersPath: "Core"
                /*
                cSettings: [ 
                    .headerSearchPath("yoga"),
                    //.headerSearchPath("Sources/internal"),
                    //.headerSearchPath("Sources/event")
                ]
                */
        )
    ],
    swiftLanguageVersions: [
        .version("5")
    ],
    cxxLanguageStandard: .gnucxx11
)
