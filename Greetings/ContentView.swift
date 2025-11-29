import SwiftUI

struct ContentView: View {

    var body: some View {
        ZStack {
            BackGroundView()
            VStack(alignment: .leading) {
                TitleView()
                Spacer()
                MessagesView()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
