//
//  ChangingIcons.swift
//  houseMe
//
//  Created by yuliana aldrich on 12/19/23.
//

import SwiftUI

struct ChangingIcons: View {
    //place this tag in the pages want to show the footer
    @State private var selectedTab: Tab = .house
    
    //initializer we are calling a tabbar to not reserve an empty space
    init(){
        UITabBar.appearance().isHidden = true
    }
    let data: [String] = []
    var body: some View {

        ZStack {
            VStack{
                TabView(selection: $selectedTab) {
                    ForEach(Tab.allCases, id:\.rawValue){ tab in
                        HStack {
                            Image(systemName: tab.rawValue)
                            Text("\(tab.rawValue.capitalized)")
                                .bold()
                                .animation(nil, value: selectedTab)
                        }.tag(tab)
                    }
                }
            }
            
        }
        VStack {
            //here is my navbar
            headerFooter(selectedTab: $selectedTab)
        }
            
        
    }
}

#Preview {
    ChangingIcons()
}
