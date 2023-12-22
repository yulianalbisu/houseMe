//
//  GameScreen.swift
//  HouseMe
//
//  Created by Mercedes Barragan on 12/14/23.
//

import SwiftUI
struct GameScreen: View {
  var body: some View {
    
      NavigationStack {
          ZStack {
              Color ("284B63")
                .ignoresSafeArea()
              VStack(spacing: 20){
                Text("Financial Scavenger Hunt")
                      .font(.largeTitle)
                      .fontWeight(.medium)
                      .foregroundColor(Color.white)
                  .multilineTextAlignment(.center)
                  .padding(.bottom, 70.0)
                HStack {
                    VStack {
                    Image(systemName: "trophy")
                      .foregroundColor(Color("ECD260"))
                      .font(.system(size: 40))
                      .padding(.bottom, 30.0)
                  }
                    NavigationLink(destination:LevelOne()){
                        Text("Level 1")
                            .fontWeight(.regular)
                            .frame(width:100,height:40)
                            .font(.headline)
                            .foregroundColor(.black)
                            .background(Color("D9D9D9"))
                            .padding(.horizontal, 20.0)
                            .padding(.bottom, 30.0)
                            .padding(.horizontal, 20.0)
                    }
                }
                HStack {
                  VStack {
                    Image(systemName: "trophy")
                      .foregroundColor(Color("D9D9D9"))
                      .font(.system(size: 40))
                      .padding(.bottom, 30.0)
                  }
                    Button(action:{}){
                        Text("Level 2")
                            .fontWeight(.regular)
                            .frame(width:100,height:40)
                            .font(.headline)
                            .foregroundColor(.white)
                            .background(Color("D9D9D9"))
                            .padding(.horizontal, 20.0)
                    }.buttonStyle(PlainButtonStyle())
                        .cornerRadius(10)
                        .padding(.bottom, 30.0)
                        .padding(.horizontal, 20.0)
                    
                }
                  HStack {
                      VStack {
                          Image(systemName: "trophy")
                              .foregroundColor(Color("D9D9D9"))
                              .font(.system(size: 40))
                              .padding(.bottom, 30.0)
                      }
                      Button(action:{}){
                          Text("Level 3")
                              .fontWeight(.regular)
                              .frame(width:100,height:40)
                              .font(.headline)
                              .foregroundColor(.white)
                              .background(Color("D9D9D9"))
                              .padding(.horizontal, 20.0)
                      }.buttonStyle(PlainButtonStyle())
                          .cornerRadius(20)
                          .padding(.bottom, 30.0)
                          .padding(.horizontal, 20.0)
                  }
                    HStack {
                      VStack {
                        Image(systemName: "trophy")
                          .foregroundColor(Color("D9D9D9"))
                          .font(.system(size: 40))
                          .padding(.bottom, 30.0)
                        
                      }
                
                        Button(action:{}){
                            Text("Level 4")
                                .fontWeight(.regular)
                                .frame(width:100,height:40)
                                .font(.headline)
                                .foregroundColor(.white)
                                .background(Color("D9D9D9"))
                                .padding(.horizontal, 20.0)
                        }.buttonStyle(PlainButtonStyle())
                            .cornerRadius(20)
                            .padding(.bottom, 30.0)
                            .padding(.horizontal, 20.0)
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.horizontal, 6.0/*@END_MENU_TOKEN@*/)
          }
      }
      }
    }

#Preview {
  GameScreen()
}
