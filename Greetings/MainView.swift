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
    
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        // Portrait Mode ?
        if isPortraitPhone || isIpad {
            NavigationStack{
                GreetingsView()
                    .toolbar{
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptionsTapView(Language: $language, LayoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
        }else{
            NavigationStack{
                LandscapeGreetingsView()
                    .toolbar{
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptionsTapView(Language: $language, LayoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
        }
    }
}

#Preview {
    MainView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
