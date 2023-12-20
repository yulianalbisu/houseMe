//
//  ContentView.swift
//  NewNavigationDemo
//  Updated from the Navigation Demo 2021
//  Created by Danielle Abrams on 11/22/23.
//

import SwiftUI

struct ContentView: View {
    
    let request = URLRequest(url: URL(string: "https://developer.apple.com/design/human-interface-guidelines/ios/app-architecture/navigation/")!)
    
    var body: some View {
        NavigationStack{
            VStack {
                TabView{
                    
                    FlatView()
                        .tabItem{
                            Label("Flat", systemImage: "person")
                        }
                    
                    
                    HierarchicalView()
                        .tabItem {
                            Label("Hierarchical", systemImage: "folder")
                        }
                    
                    ContentDrivenView()
                        .tabItem{
                            Label( "Content Driven", systemImage: "circle")
                        }
                    
                    WebView()
                        .tabItem {
                            Label("HIG Tips", systemImage: "house")
                        }
                    
                }
                
            }
            
            .navigationBarTitle("Navigation Demo", displayMode: .inline)
        }
    }
}

#Preview {
    ContentView()
}
