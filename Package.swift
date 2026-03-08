// swift-tools-version: 6.0
import PackageDescription
import AppleProductTypes

let package = Package(
    name: "TestApp",
    platforms: [
        .iOS("26.0") // 最新OSに合わせる
    ],
    products: [
        .iOSApplication(
            name: "TestApp",
            targets: ["AppModule"],
            bundleIdentifier: "com.user.testapp.v26", // 既存アプリと被らない名前に変更
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .heart),
            accentColor: .presetColor(.blue),
            supportedDeviceFamilies: [.pad, .phone],
            supportedInterfaceOrientations: [.portrait, .landscapeLeft, .landscapeRight]
        )
    ],
    targets: [
        .executableTarget(name: "AppModule", path: ".")
    ]
)
