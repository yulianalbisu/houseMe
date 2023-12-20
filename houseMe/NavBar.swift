//
//  NavBar.swift
//  houseMe
//
//  Created by yuliana aldrich on 12/19/23.
//

import SwiftUI

extension UIColor {
  static let Selected = UIColor(Color("b"))
    static let Background = UIColor(Color("p"))
    static let NotSelected = UIColor(Color("babyblue"))
}

struct NavBar: View {
    
    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                TabView {
                                HomePage()
                                    .badge(2)
                                    .tabItem {
                                        Label("Home", systemImage: "house")
                                    }
                                //REPLACE
                                Inputs()
                                    .badge(2)
                                    .tabItem {
                                        Label("E-Book", systemImage: "book")
                                    }
                                //REPLACE
                                HomePage()
                                    .tabItem {
                                        Label("Budget", systemImage: "dollarsign.square").font(.system(size: 22))
                                        //we can trigger the selected tab
                                            
                                    }
                                //REPLACE
                                Signup()
                                    .badge("!")
                                    .tabItem {
                                        Label("Profile", systemImage: "person.crop.circle")
                                    }
                                Signup()
                                    .badge("!")
                                    .tabItem {
                                        Label("Coach", systemImage: "message.circle")
                                    }
                
                            }.tint(Color(UIColor.Selected))
                        .onAppear {
                            UITabBar.appearance().backgroundColor = UIColor.Background // UIColor.Secondary
                            UITabBar.appearance().unselectedItemTintColor = UIColor.NotSelected // UIColor.TextColor
                    }
            }
        }
        
    }
}

#Preview {
    NavBar()
}
