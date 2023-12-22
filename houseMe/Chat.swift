//
//  Chat.swift
//  HouseMe
//
//  Created by Mercedes Barragan on 12/13/23.
//

import SwiftUI
struct Chat: View {
    
    @State private var showAiChat = true
    
    var body: some View {
        
        ZStack {
            Color("284B63")
                .ignoresSafeArea()
            
            if (showAiChat) {
                
                VStack(spacing: 25.0) {
                    Text("Ask your financial coach!")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding([.leading, .bottom, .trailing], 50.0)
                    Text("50% Artifiial Intelligence")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, -10.0)
                    Text("50% Real Human")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, -10.0)
                    Text("100% Here for you!")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 70.0)
                    Button(action:{self.showAiChat.toggle()}){
                        Text("I have a question about my credit score")
                            .fontWeight(.regular)
                            .frame(width:300,height:60)
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .background(Color("FFFFFF"))
                    }.buttonStyle(PlainButtonStyle())
                        .cornerRadius(20)
                    
                    Button(action:{}){
                        Text("How do I lower my monthly bills?")
                            .fontWeight(.regular)
                            .frame(width:300,height:60)
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .background(Color("FFFFFF"))
                    }.buttonStyle(PlainButtonStyle())
                        .cornerRadius(20)
                    
                    Button(action:{}){
                        Text("I'd like to speak to my human finance coach. please")
                            .fontWeight(.regular)
                            .frame(width:300,height:60)
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .background(Color("FFFFFF"))
                    }.buttonStyle(PlainButtonStyle())
                        .cornerRadius(20)
                }
            } else {
                VStack {
                    Button(action:{self.showAiChat.toggle()}){
                        Text("I have a question about my credit score")
                            .fontWeight(.regular)
                            .frame(width:300,height:60)
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .background(Color("FFFFFF"))
                    }.buttonStyle(PlainButtonStyle())
                        .cornerRadius(20)
                    Spacer()
                        .frame(height: 50.0)
                    VStack (alignment: .leading, spacing: 0){
                        
                        Text("AI Assisted Chat")
                        
                        Text("Your credit score is determined based on your credit to debt ratio, along with many other factors.")
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .frame(width: 316.0, height: 105.0)
                            .background(Color("536F82"))
                            .cornerRadius(20)
                    }.padding(.leading, 65.0).foregroundColor(.white)
                }
            }
            
        }
    }
}


#Preview {
    Chat()
}
