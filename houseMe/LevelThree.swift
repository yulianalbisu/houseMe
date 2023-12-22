//
//  LevelThree.swift
//  HouseMe
//
//  Created by Mercedes Barragan on 12/19/23.
//

//
//  Foxtrot.swift
//  HouseMe
//
//  Created by Mercedes Barragan on 12/20/23.
//

import SwiftUI
struct LevelThree: View {
    
    @State private var showTRUE = true
    
    var body: some View {
        
       
        NavigationStack {
            ZStack {
                Color("284B63")
                    .ignoresSafeArea()
                
                if (showTRUE) {
                    
                    VStack(spacing: 25.0) {
                        Text("Level 1" )
                            .font(.largeTitle)
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 10.0)
                        Image(systemName: "trophy.fill")
                            .foregroundColor(Color("ECD260"))
                            .font(.system(size: 40))
                            .padding(.bottom, 30.0)
                        Text("Question 3 ")
                            .font(.title3)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding([.leading, .bottom, .trailing], 0.0)
                        Text("You can watch recorded sessions on this app?")
                            .font(.title3)
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding([.leading, .bottom, .trailing], 30.0)
                        
                        
                        Button(action:{}){
                            Text("False")
                                .fontWeight(.regular)
                                .frame(width:300,height:60)
                                .font(.subheadline)
                                .foregroundColor(.black)
                                .background(Color("FFFFFF"))
                        }.buttonStyle(PlainButtonStyle())
                            .cornerRadius(20)
                        
                        Button(action:{self.showTRUE.toggle()}){
                            Text("True")
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
                        Button(action:{self.showTRUE.toggle()}){
                            Text("Correct!")
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .font(.largeTitle)
                                .foregroundColor(.white)
                            
                            Image(systemName: "star")
                                .font(.system(size: 60))
                                .padding(.top, 0.0)
                                .padding(.bottom, 0.0)
                                .fontWeight(.bold)
                                .foregroundColor(Color("ECD260"))
                        }
                        VStack(spacing: 10.0) {
                                Button(action:{}){
                                    NavigationLink(destination:GameScreen2()){
                                    Text("Move to Level 2!")
                                        .fontWeight(.regular)
                                        .frame(width:200,height:60)
                                        .font(.subheadline)
                                        .foregroundColor(.black)
                                        .background(Color("FFFFFF"))
                                        .padding(.top, 0.0)
                                        .padding(.bottom, 0.0)
                                        .cornerRadius(20)
                                }
                            }
                            
                        }
                    }
                    
                }
            }
        }
    }
}
    
    #Preview {
        LevelThree()
    }


