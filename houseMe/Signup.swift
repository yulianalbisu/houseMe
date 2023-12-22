//
//  baseApp.swift
//  houseMe
//
//  Created by yuliana aldrich on 12/13/23.
//

import SwiftUI

let backgroundColor = Color("pink")

struct Signup: View {
    
    @State private var name: String = ""
    
    var body: some View {
        
        ZStack {
            Color("b").ignoresSafeArea()
            
                   VStack {
                       Image("logo 1").resizable().frame(width: 125.0, height: 75.0)
                       HStack{
                           Button("SIGNUP") {
                               /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                           }.padding(9).foregroundColor(Color.white).frame(width: 120, height: 40).cornerRadius(0).background(Color.b).overlay{Rectangle().stroke(Color.white, lineWidth: 1)}
                           
                           Button("LOGIN") {
                               /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                           }.padding(9).foregroundColor(Color.white).frame(width: 120, height: 40).cornerRadius(0).background(Color.b).overlay{Rectangle().stroke(Color.white, lineWidth: 1)}
                       }.padding()
                       
                       VStack(
                        alignment: .leading,
                        spacing: 10
                    ){
                           Text("FIRST NAME")
                           Inputs()
                           
                           Text("LAST NAME")
                           Inputs()
                           
                           Text("EMAIL")
                           Inputs()
                           
                           Text("PASSWORD")
                        
                        HStack {
                            Inputs()
                            Button(action: {}, label: {
                            Image(systemName: "eye")
                            .font(.title)
                            })
                        }
                    }.padding().foregroundColor(.white)
                       
                       Button("SIGNUP") {
                           /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                       }.padding(8.0).frame(width: 120.0, height: 40.0).fontWeight(.bold ).foregroundColor(Color.b).background(Color.p)
                       
                   }.padding()
            
                       
                   }
            
           }
        
    }


    
#Preview {
    Signup()
}
