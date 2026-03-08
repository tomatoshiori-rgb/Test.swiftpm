import SwiftUI
import Observation

@Observable
class AppState {
    var items: [String] = ["既存のアイテム 1", "既存のアイテム 2"]
    
    func addItem(_ text: String) {
        if !text.isEmpty {
            items.append(text)
        }
    }
}
