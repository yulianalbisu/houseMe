//
//  Category.swift
//  HomePage
//
//  Created by Esther Stevens on 12/20/23.
//

import SwiftUI

struct Category: Identifiable {
    var id = UUID()
    let name: String
}

let categories = [
    Category(name: "All"),
    Category(name: "IT"),
    Category(name: "BUSINESS"),
    Category(name: "ART"),
    
    
]
