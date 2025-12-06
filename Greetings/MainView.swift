//
//  MainView.swift
//  Greetings
//
//  Created by Neevesh Jain on 01/12/25.
//

import SwiftUI
//Compact width, regular height
struct MainView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isPortraitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    var isIpad : Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var body: some View {
        // Portrait Mode ?
        if isPortraitPhone || isIpad {
            GreetingsView()
        }else{
            LandscapeGreetingsView()
        }
    }
}

#Preview {
    MainView()
}
