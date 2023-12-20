//
//  inputs.swift
//  houseMe
//
//  Created by yuliana aldrich on 12/13/23.
//

import SwiftUI



struct Inputs: View {
    
    
    @State private var name: String = ""
    
    var body: some View {
        
        HStack {
            TextField("your answer here", text: $name)
                .textFieldStyle(.roundedBorder).foregroundColor(Color.b)
        }
    }
    
}

#Preview {
    Inputs()
}
