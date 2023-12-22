//
//  ChatBot2.swift
//  HomePage
//
//  Created by Esther Stevens on 12/19/23.
//

import SwiftUI
struct ChatBot2: View {
    @State private var messageText = ""
    @State var messages: [String] = ["Weclome to Career Coach"]
    var body: some View {
        
        
        ZStack {
            
            Color("blue")
                .background(._284_B_63)
                .ignoresSafeArea()
            VStack {
                Image("logo 1").resizable().frame(width: 125.0, height: 75.0)
                Spacer()
                
                HStack {
                    Text("Live Chat")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .bold()
                    
                    Image(systemName: "bubble.left.fill")
                        .font(.system(size: 26))
                        .foregroundColor(Color("D9D9D9"))
                }
                .padding(.top, 23.0)
                
                ScrollView {
                    ForEach(messages, id: \.self) { message in
                        if message.contains("[USER]") {
                            let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                            HStack {
                                Spacer()
                                Text(newMessage)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .padding()
                                    .foregroundColor(._284_B_63)
                                    .background(.D_9_D_9_D_9)
                                    .cornerRadius(10)
                                    .padding(.horizontal, 16)
                                    .padding(.bottom, 10)
                            }
                        } else {
                            HStack {
                                Text(message)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(._284_B_63)
                                    .cornerRadius(10)
                                    .padding(.horizontal, 16)
                                    .padding(.bottom, 10)
                                Spacer()
                            }
                            
                        }
                    } .rotationEffect(.degrees(180))
                } .rotationEffect(.degrees(180))
                    .background(Color.white)
                HStack {
                    TextField("Type something", text: $messageText)
                        .padding()
                        .background(Color.white)
                        .onSubmit {
                            sendMessage(message: messageText)
                        }
                    Button {
                        sendMessage(message: messageText)
                    } label: {
                        Image(systemName: "paperplane.fill")
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color("D9D9D9")/*@END_MENU_TOKEN@*/)
                    }
                    .font(.system(size: 26))
                    .padding(.horizontal, 10)
                }
                .padding()
            }
        }
    }
    func sendMessage(message: String) {
        withAnimation{
            messages.append("[USER]" + message)
            self.messageText = ""
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            withAnimation {
                messages.append(getBotResponse2(message: message))
            }
        }
    }
}
#Preview {
    ChatBot2()
}
