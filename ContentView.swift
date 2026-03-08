import SwiftUI

struct ContentView: View {
    @State private var state = AppState()
    @State private var isShowingInput = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(state.items, id: \.self) { item in
                    Text(item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("マイリスト")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button {
                        isShowingInput = true
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.title2)
                    }
                }
            }
            // 入力画面をシート（モーダル）で表示
            .sheet(isPresented: $isShowingInput) {
                InputView(appState: state)
            }
        }
    }
}
