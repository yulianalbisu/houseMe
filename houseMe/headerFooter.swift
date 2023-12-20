//
//  headerFooter.swift
//  houseMe
//
//  Created by yuliana aldrich on 12/14/23.
//

import SwiftUI

enum Tab: String, CaseIterable{
    //these are all my icons
    case house
    case message
    case dollarsign
    case book
    case person
}


struct headerFooter: View {
    
    @Binding var selectedTab: Tab
    //we want to fill the icon everytime we click on it
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }
    
    private var tabColor: Color {
        switch selectedTab {
        case .house:
            return .blue
        case .message:
            return .pink
        case .dollarsign:
            return .indigo
        case .book:
            return .cyan
        case .person:
            return .green
        }
    }
    
    private var tabView:  any View {
            switch selectedTab {
            case .house:
                return Inputs()
            case .message:
                return Profile()
            case .dollarsign:
                return Login()
            case .book:
                return Signup()
            case .person:
            return Profile()
            }
        }
    
    var body: some View {
        
        ZStack {
            Color("b").ignoresSafeArea()
            NavigationStack {
                
                VStack{
                    Spacer()
                    
                    HStack{
                        //hold the tabs, iterate to all cases
                        ForEach(Tab.allCases, id: \.rawValue){
                            //separate each icon with a spacer
                            tab in Spacer()
                            
                            
                            //if selected fill them with a diff color
                            Image(systemName: selectedTab == tab ? fillImage: tab.rawValue)
                                .scaleEffect(selectedTab == tab ? 1.25 : 1.0)
                            //now lets change the color if selected
                                .foregroundColor(selectedTab == tab ? tabColor : .gray)
                            //changing the size if selected
                                .font(.system(size: 22))
                            //we can trigger the selected tab
                                .onTapGesture {
                                    withAnimation(.easeIn(duration: 0.1)){
                                        selectedTab = tab
                                    }
                                }
                            Spacer()
                        }
                        
                        //thinMaterial change between dark mode and light mode
                    }.frame(width: nil, height:60).background(.thinMaterial).cornerRadius(10).padding()
                }
            }
            
        }
    }
}

#Preview {
    //need to place the constant in the view line11
    headerFooter(selectedTab: .constant(.house))
}
