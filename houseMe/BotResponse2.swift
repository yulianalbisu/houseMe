//
//  BotResponse2.swift
//  HomePage
//
//  Created by Esther Stevens on 12/19/23.
//

import SwiftUI
func getBotResponse2(message: String) -> String {
    let tempMessage = message.lowercased()
    
    if tempMessage.contains("hi") {
        return "Hello, how can I assist you?"
    } else if tempMessage.contains("bye") {
        return "Goodbye!"
    } else if tempMessage.contains("how are you"){
        return "I'm fine, how are you?"
    } else if tempMessage.contains("i need to chat with a coach"){
        return "Someone will be with you shortly."
    }
    else {
        return "End of Chat"
    }
    
    struct BotResponse2: View {
        var body: some View {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
    
}
