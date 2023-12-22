//
//  ConnectCoach.swift
//  HomePage
//
//  Created by Esther Stevens on 12/13/23.
//

import SwiftUI

struct ConnectCoach: View {
    
    var body: some View {
        
        
        ZStack {
            Color ("284B63")
                .ignoresSafeArea()
            VStack(spacing: 20){
                Image("logo 1").resizable().frame(width: 125.0, height: 75.0).padding(.bottom, 50.0)
                Text("Connect with the your Career Coach")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 30.0)
                
                HStack {
                    
                    VStack {
                        
                        Text("Email")
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding(.leading)
                        Link (destination: URL(string: "https://mail.google.com/mail/mu/mp/469/#tl/priority/%5Esmartlabel_personal")!){
                            Image(systemName: "square.and.pencil")
                                .foregroundColor(Color("D9D9D9"))
                                .padding(.leading)
                                .font(.system(size: 75))
                        }
                    }
                    Spacer()
                        .padding(.horizontal, 10.0)
                    Text("E-mail Anytime")
                        .foregroundColor(Color.white)
                        .padding([.top, .bottom, .trailing], 20.0)
                }
                
                HStack {
                    
                    VStack {
                        Text("Live Chat")
                            .foregroundColor(Color.white)
                        
                        Image(systemName: "message.fill")
                            .foregroundColor(Color("D9D9D9"))
                            .font(.system(size: 75))
                    }
                    Text("Live Chat M-F 9 AM to 8 PM EST")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        .padding(/*@START_MENU_TOKEN@*/.horizontal, 6.0/*@END_MENU_TOKEN@*/)
                    
                }
                HStack {
                    VStack {
                        
                        Text("Call")
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        NavigationLink(destination:Image("Keypad")
                            .resizable()){
                                Image(systemName: "phone.fill")
                                    .foregroundColor(Color("D9D9D9"))
                                    .font(.system(size: 75))
                            }
                        
                    }
                    
                    Text("Call M-F 9 AM to 8 PM EST")
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
                        .padding(.leading, 45.0)
                    
                }
                .padding(/*@START_MENU_TOKEN@*/.horizontal, 6.0/*@END_MENU_TOKEN@*/) 
                
                
                
            }
        }
    }
    
    
    
    
}



#Preview {
    ConnectCoach()
}
