//
//  Job.swift
//  HomePage
//
//  Created by Esther Stevens on 12/20/23.
//

import SwiftUI

struct Job {
    var id = UUID ()
    var title: String
    var location: String
    var bgColor: String
    var image: String
    
}

let jobs = [
    Job(title: "Photographer", location: "Symbology  .  Detroit", bgColor: "D9D9D9", image:"camera.shutter.button"),
    Job(title: "Software Engineer", location: "Symbology  .  Detroit", bgColor: "D9D9D9", image:"laptopcomputer.and.iphone"),
    Job(title: "Content Writer", location: "Symbology  .  Detroit", bgColor: "D9D9D9", image:"book.pages"),
    Job(title: "QA Engineer", location: "Symbology  .  Detroit", bgColor: "D9D9D9", image:"dot.scope.laptopcomputer"),
]

