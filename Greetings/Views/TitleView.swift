
import SwiftUI

/// This is the title view of the app which displays a title, a subtitile which randomly changes on tap. And we have a coloful disk which rotates on tap and which is amazing.
struct TitleView: View {

    @State private var subtitile: LocalizedStringKey = "Lets get started!"
    let subtitiles : [LocalizedStringKey] = ["Lets get started!","Welcome to IOS programming.","SwiftUI is awesome!"]
    
    
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                GreetingsTextView(subtitile: $subtitile)
            }
            Spacer()
           RotateablecircleView()
        }
    }
}

#Preview {
    TitleView()
    Spacer()
}
