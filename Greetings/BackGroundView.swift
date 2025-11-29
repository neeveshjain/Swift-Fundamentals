
import SwiftUI

struct BackGroundView: View {
    var body: some View {
        LinearGradient(colors: [Color.myBlue1, Color.myBlue2], startPoint: .topLeading, endPoint: .bottomTrailing).opacity(0.3).ignoresSafeArea(edges: .all)
    }
}

#Preview {
    BackGroundView()
}
