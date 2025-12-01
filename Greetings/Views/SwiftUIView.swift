
import SwiftUI

struct TextView: View {
    
    let text:LocalizedStringKey
    @State var color:Color
    let colors:[Color] = [.purple,.indigo,.blue,.green,.yellow,.orange,.red]
    
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .font(.body)
            .padding()
            .foregroundStyle(.white)
            .background(color.opacity(0.8))
            .cornerRadius(20.0)
            .onTapGesture {
                withAnimation{
                    color = colors.randomElement() ?? .red
                }
            }
  }
}

#Preview {
    VStack {
        TextView(text: "Hogaya na bhai", color: .blue)
        TextView(text: "Hummus", color: .green)
        TextView(text: "Peace", color: .purple)

    }
}
