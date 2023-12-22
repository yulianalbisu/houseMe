//
//  LevelOne.swift
//  HouseMe
//
//  Created by Mercedes Barragan on 12/19/23.
//

import SwiftUI
struct LevelOne: View {
    
    @State private var showBuildingWealth = true
    
    var body: some View {
    
        NavigationStack {
            ZStack {
                    Color("284B63")
                        .ignoresSafeArea()
                    
                    if (showBuildingWealth) {
                        
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
                            Text("Question 1 ")
                                .font(.title3)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .padding([.leading, .bottom, .trailing], 0.0)
                            Text("What was the name of the E-Book we reccommend you read through? ")
                                .font(.title3)
                                .fontWeight(.regular)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .padding([.leading, .bottom, .trailing], 30.0)
                            
                            Button(action:{}){
                                Text("Wealth Building")
                                    .fontWeight(.regular)
                                    .frame(width:300,height:60)
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                                    .background(Color("FFFFFF"))
                            }.buttonStyle(PlainButtonStyle())
                                .cornerRadius(20)
                            
                            Button(action:{}){
                                Text("Penny Wise?")
                                    .fontWeight(.regular)
                                    .frame(width:300,height:60)
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                                    .background(Color("FFFFFF"))
                            }.buttonStyle(PlainButtonStyle())
                                .cornerRadius(20)
                            
                            Button(action:{self.showBuildingWealth.toggle()}){
                                Text("Building Wealth: A Beginner’s Guide to Securing Your Financial Future")
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
                            Button(action:{self.showBuildingWealth.toggle()}){
                                Text("You got it right!")
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
                                            NavigationLink(destination:LevelTwo()){
                                            Text("Next question")
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
        LevelOne()
    }

