//
//  FlatView.swift
//  NewNavigationDemo
//
//  Created by Danielle Abrams on 11/22/23.
//

import SwiftUI

struct FlatView: View {
    var body: some View {
        VStack {
            Text("Flat Navigation")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Image("NavigationFlat-Graphic_2x")
                .resizable()
                .scaledToFit()
            Divider()
            Text("Switch between multiple content categories. Music and App Store use this navigation style.")
                .font(.headline)
            Spacer()
            Text("Use Tab View for flat navigation")
                .padding()
            Image(systemName: "arrow.down")
                .font(.largeTitle)
        }
        .padding()
    }
}
#Preview {
    FlatView()
}
