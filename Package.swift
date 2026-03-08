// swift-tools-version: 6.0
import PackageDescription
import AppleProductTypes

let package = Package(
    name: "TestApp",
    platforms: [
        .iOS("18.0") // ここを 26.0 から 18.0 に修正！
    ],
    products: [
        .iOSApplication(
            name: "TestApp",
            targets: ["AppModule"],
            bundleIdentifier: "com.user.testapp.v18",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .heart),
            accentColor: .presetColor(.blue),
            supportedDeviceFamilies: [.pad, .phone],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeLeft,
                .landscapeRight,
                .portraitUpsideDown // 警告対応：全ての向きを許可
            ]
        )
    ],
    targets: [
        .executableTarget(name: "AppModule", path: ".")
    ]
)
