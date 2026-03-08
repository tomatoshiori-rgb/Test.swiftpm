// swift-tools-version: 6.0
import PackageDescription
import AppleProductTypes

let package = Package(
    name: "TestApp",
    platforms: [
        .iOS("26.0") // 最新のiOS 26に対応
    ],
    products: [
        .iOSApplication(
            name: "TestApp",
            targets: ["AppModule"],
            bundleIdentifier: "com.yourname.test.ios26", // 重複を避けるため書き換えてください
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .appShortcut),
            accentColor: .presetColor(.blue),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeLeft,
                .landscapeRight
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)
