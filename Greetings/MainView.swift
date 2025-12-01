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
    
    var body: some View {
        // Portrait Mode ?
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
            GreetingsView()
        }else{
            LandscapeGreetingsView()
        }
    }
}

#Preview {
    MainView()
}
