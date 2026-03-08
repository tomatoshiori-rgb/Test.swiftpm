import SwiftUI

struct ContentView: View {
    var body: some View {
        // 画面全体を中央揃えにする最新のレイアウト手法
        ZStack {
            // 背景色の指定（Liquid Glass環境でも安定）
            Color(uiColor: .systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Button(action: {
                    print("OKボタンがタップされました（iOS 26環境）")
                }) {
                    Text("OK")
                        .font(.title2.bold())
                        .frame(minWidth: 120, minHeight: 50)
                }
                // iOS 26の標準的な強調スタイル
                .buttonStyle(.borderedProminent)
                .controlSize(.extraLarge)
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            }
        }
    }
}

#Preview {
    ContentView()
}
