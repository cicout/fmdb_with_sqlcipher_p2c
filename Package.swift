// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "FMDB+SQLCipher",
    platforms: [.iOS(.v8)],
    products: [
        .library(name: "FMDB+SQLCipher", targets: ["FMDB", "SQLCipher"]),
        .library(name: "FMDB", targets: ["FMDB"),
        .library(name: "SQLCipher", targets: ["SQLCipher"])
    ],
    targets: [
        .target(
            name: "FMDB",
            path: "Pods/FMDB",
            dependencies: ["SQLCipher"]
        ),
        .target(
            name: "SQLCipher",
            path: "Pods/SQLCipher"
        )
    ]
)
