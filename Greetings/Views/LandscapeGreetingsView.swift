
import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            BackGroundView()
            HStack{
                VerticalTitleView()
                Spacer()
                MessagesView()
            }
            .padding()
        }
    }
}

#Preview {
    LandscapeGreetingsView()
}
