//
//  VertialStackView.swift
//  Greetings
//
//  Created by Neevesh Jain on 01/12/25.
//

import SwiftUI

struct VerticalTitleView: View {
    @State private var subtitile: LocalizedStringKey = "Lets get started!"
    let subtitiles : [LocalizedStringKey] = ["Lets get started!","Welcome to IOS programming.","SwiftUI is awesome!"]
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                GreetingsTextView(subtitile: $subtitile)
                RotateablecircleView()
                Spacer()
                
            }.padding(.vertical)
 
        }
    }
}

#Preview {
    VerticalTitleView()
}
