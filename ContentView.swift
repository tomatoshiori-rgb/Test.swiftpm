import SwiftUI

struct ContentView: View {
    var body: some View {
        // クラッシュを避けるため、極めてシンプルな構造にします
        ZStack {
            Color(uiColor: .systemBackground)
                .ignoresSafeArea()
            
            Button {
                print("OK")
            } label: {
                Text("OK")
                    .font(.largeTitle)
                    .padding()
            }
            .buttonStyle(.borderedProminent)
        }
    }
}
