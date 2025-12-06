//
//  LandscapeTitleView.swift
//  Greetings
//
//  Created by Neevesh Jain on 01/12/25.
//

import SwiftUI

struct GreetingsTextView: View {
    @Binding var subtitile: LocalizedStringKey
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass

    var isIpad : Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var font:Font{
        isIpad ? .system(size: 50) : .largeTitle
    }
    let subtitiles : [LocalizedStringKey] = ["Lets get started!","Welcome to IOS programming.","SwiftUI is awesome!"]
    var body: some View {
        VStack(alignment: .leading) {
            Text("SwiftUI")
                .font(font)
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
