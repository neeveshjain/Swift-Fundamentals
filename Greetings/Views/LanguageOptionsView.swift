//
//  LanguageOptionsView.swift
//  Greetings
//
//  Created by Neevesh Jain on 06/12/25.
//

import SwiftUI

struct LanguageOptionsView: View {
    @Binding var Language : String
    @Binding var LayoutDirectionString : String
    var body: some View {
        Image(systemName: "gearshape.fill")
            .contextMenu{
                Button("English"){
                    Language = "en"
                    LayoutDirectionString = LEFT_TO_RIGHT
                }
                Button("Hindi"){
                    Language = "Hi"
                    LayoutDirectionString = LEFT_TO_RIGHT
                }
                Button("Spanish"){
                    Language = "es"
                    LayoutDirectionString = LEFT_TO_RIGHT
                }
            }
    }
}

#Preview {
    LanguageOptionsView(Language: .constant("en"), LayoutDirectionString: .constant(LEFT_TO_RIGHT))
}
