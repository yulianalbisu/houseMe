//
//  profile.swift
//  houseMe
//
//  Created by yuliana aldrich on 12/14/23.
//

import SwiftUI

struct Profile: View {
    
    //initializer we are calling a tabbar to not reserve an empty space
    init(){
        UITabBar.appearance().isHidden = false
    }
    let data: [String] = []
    var body: some View {

        ZStack {
            Color("b").ignoresSafeArea()
            
            VStack{
                
                Image("logo 1").resizable().frame(width: 125.0, height: 75.0).scaledToFit().clipShape(Circle())
                Text("Olivia Rodrigo")
                
            }
            
            
                    }
        
        VStack {
            //here is my navbar
            NavBar()
        }
        
        
            
        
    }
}

#Preview {
    Profile()
}
