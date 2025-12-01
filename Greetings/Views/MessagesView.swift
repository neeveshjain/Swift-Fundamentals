//
//  MessagesView.swift
//  Greetings
//
//  Created by Neevesh Jain on 25/11/25.
//

import SwiftUI

struct MessagesView: View {
    let messages:[DataItemModel] = [
        DataItemModel(text: "Welcome to swift programming", color: Color("myGreen")),
        DataItemModel(text: "are you ready to,", color: Color("myGrey")),
        DataItemModel(text: "start exploring!", color: Color("myPurple")),
        DataItemModel(text: "Boom.", color: Color("myYellow")),
        DataItemModel(text: "Hogaya na bhai", color: Color("myRed"))
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages){
                dataItem in TextView( text: dataItem.text, color: dataItem.color)
            }
        }
    }
}

#Preview {
    MessagesView()
}
