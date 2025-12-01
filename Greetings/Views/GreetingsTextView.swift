//
//  LandscapeTitleView.swift
//  Greetings
//
//  Created by Neevesh Jain on 01/12/25.
//

import SwiftUI

struct GreetingsTextView: View {
    @Binding var subtitile: LocalizedStringKey
    let subtitiles : [LocalizedStringKey] = ["Lets get started!","Welcome to IOS programming.","SwiftUI is awesome!"]
    var body: some View {
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
    }
}

#Preview {
    GreetingsTextView(subtitile: .constant("Lets get started!"))
}
