//
//  GreetingsApp.swift
//  Greetings
//
//  Created by Neevesh Jain on 23/11/25.
//

import SwiftUI
import TipKit
//Portrait mode Compact width, regular height
@main
struct GreetingsApp: App {
//    @State private var language: String = "en"
//    @State private var languageDirectionString: String = LEFT_TO_RIGHT
    
    @AppStorage("language") var language : String = "en"
    @AppStorage("languageDirectionString") var languageDirectionString: String = LEFT_TO_RIGHT
    
    var layoutDirection : LayoutDirection {
        if languageDirectionString == LEFT_TO_RIGHT {
            return .leftToRight
        }
        return .rightToLeft
    }
    var body: some Scene {
        WindowGroup {
            MainView(language: $language, layoutDirectionString: $languageDirectionString)
                .environment(\.locale, Locale(identifier: language))
                .environment(\.layoutDirection, layoutDirection)
                .task {
                    try? Tips.configure([
                        .displayFrequency(.immediate),
                        .datastoreLocation(.applicationDefault)
                    ])
                }
        }
    }
}
