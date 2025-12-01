
import SwiftUI

/// This is the title view of the app which displays a title, a subtitile which randomly changes on tap. And we have a coloful disk which rotates on tap and which is amazing.
struct TitleView: View {
    
    let lineWidth = 15.0
    let diameter = 70.0
    
    @State private var isRotated: Bool = false
    var angle : Angle {
        isRotated ? Angle.zero : .degrees(360)
    }
    
    var angularGradient : AngularGradient {
        AngularGradient(gradient: Gradient(colors: [.red, .blue, .orange,.green]), center: .center, angle: .zero)
    }
    
    @State private var subtitile: LocalizedStringKey = "Lets get started!"
    let subtitiles : [LocalizedStringKey] = ["Lets get started!","Welcome to IOS programming.","SwiftUI is awesome!"]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(subtitile)
                    .font(.headline)
                    .fontWeight(.semibold)
            }
            .onTapGesture {
                //Change Caption
                subtitile = subtitiles.randomElement() ?? "Lets get started!"
                
            }
            Spacer()
            Circle()
                .strokeBorder(angularGradient,lineWidth: lineWidth)
                .rotationEffect(angle)
                .frame(width: diameter,height: diameter)
                .onTapGesture {
                    withAnimation {
                        isRotated.toggle()
                    }
                }
        }
    }
}

#Preview {
    TitleView()
    Spacer()
}
