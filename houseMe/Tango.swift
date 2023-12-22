//
//  Tango.swift
//  HouseMe
//
//  Created by Mercedes Barragan on 12/19/23.
//

import SwiftUI

struct Tango: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Mint", value: Color.mint)
                NavigationLink("Pink", value: Color.pink)
                NavigationLink("Teal", value: Color.teal)
            }
            .navigationDestination(for: Color.self) { color in
                ColorDetail(color: color)
            }
            .navigationTitle("Colors")
        }

