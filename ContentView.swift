import SwiftUI

struct ContentView: View {
    var body: some View {
        // iOS 26のLiquid Glassデザインに最適化した中央配置
        ZStack {
            Color(uiColor: .systemGroupedBackground)
                .ignoresSafeArea()

            Button(action: {
                print("OK Tapped on iOS 26")
            }) {
                Text("OK")
                    .font(.title.bold())
                    .frame(width: 200, height: 60)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.extraLarge)
            .clipShape(Capsule()) // 最新の標準スタイル
        }
    }
}

#Preview {
    ContentView()
}
