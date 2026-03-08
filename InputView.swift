import SwiftUI

struct InputView: View {
    @Environment(\.dismiss) var dismiss
    var appState: AppState
    @State private var inputText = ""
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("新しい項目を追加")) {
                    TextField("ここに入力してください", text: $inputText)
                        .submitLabel(.done)
                }
            }
            .navigationTitle("新規作成")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("キャンセル") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("保存") {
                        appState.addItem(inputText)
                        dismiss()
                    }
                    .disabled(inputText.isEmpty) // 空入力防止
                }
            }
        }
    }
}
