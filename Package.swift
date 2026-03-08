// swift-tools-version: 6.0
import PackageDescription
import AppleProductTypes

let package = Package(
    name: "MyTestApp",
    platforms: [.iOS("18.0")],
    products: [
        .iOSApplication(
            name: "MyTestApp",
            targets: ["AppModule"],
            bundleIdentifier: "com.example.mytestapp",
            appIcon: .placeholder(icon: .heart),
            supportedDeviceFamilies: [.pad, .phone],
            supportedInterfaceOrientations: [.portrait, .landscapeLeft, .landscapeRight]
        )
    ],
    targets: [
        .executableTarget(name: "AppModule", path: ".")
    ]
)
