//
//  HomePage.swift
//  houseMe
//
//  Created by yuliana aldrich on 12/18/23.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        
        
            NavigationStack{
                ZStack {
                    Color("b").ignoresSafeArea()
                VStack{
                    Image("logo 1").resizable().frame(width: 125.0, height: 75.0).padding(.bottom, 50.0)
                    
                    HStack(alignment: .top){
                        NavigationLink {
                            Inputs()
                        } label:{
                            VStack {
                                Text("Literacy")
                                Image(systemName: "book").resizable().frame(width:90, height: 75).foregroundColor(Color.white)
                            }.padding(.horizontal, 34.0)
                        }
                        NavigationLink {
                            //change HERE
                            Login()
                        } label: {
                            VStack {
                                Text("Budget Calculator")
                                Image(systemName: "dollarsign.square")
                                    .resizable().frame(width:90, height: 75).foregroundColor(Color.white)
                            }.padding(.horizontal, 34.0)
                        }
                        
                    }.padding(.bottom, 30.0)
                    HStack{
                        NavigationLink {
                            //change HERE
                            Login()
                        } label : {
                            VStack {
                                Text("Housing")
                                Image(systemName: "house").resizable().frame(width:90, height: 75).foregroundColor(Color.white)
                            }.padding(.horizontal, 34.0)

                        }
                        NavigationLink {
                            //change HERE
                            Signup()
                        } label: {
                            VStack {
                            Text("Financial Couch")
                            Image(systemName:"bag").resizable().frame(width:90, height: 75).foregroundColor(Color.white)
                        }.padding(.horizontal, 34.0)
                        }
                            
                    }.padding(.bottom, 30.0)
                    HStack{
                        NavigationLink {
                            //change HERE
                          Login()
                        } label: {
                            NavigationLink {
                                //change HERE
                                Signup()
                            } label: {
                                VStack {
                                    Text("Game")
                                    Image(systemName: "gamecontroller").resizable().frame(width:90.0, height: 67.0).foregroundColor(Color.white)
                                }.padding(.horizontal, 34.0)
                            }
                                                    }
                        VStack {
                            Text("Career Coach")
                            Image(systemName: "person.2.fill").resizable().frame(width:85.0, height: 70.0).foregroundColor(Color.white)
                        }.padding(.horizontal, 34.0)
                    }.padding(.bottom, 30.0)
                }.foregroundColor(.white)
            }
        }
    }
}

#Preview {
    HomePage()
}
