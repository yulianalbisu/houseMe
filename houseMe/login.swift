//
//  login.swift
//  houseMe
//
//  Created by yuliana aldrich on 12/14/23.
//

import SwiftUI


struct Login: View {
    
    @State private var name: String = ""
    @State private var password: String = ""
    
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
                        Text("EMAIL")
                            .font(.subheadline)
                        Inputs()
                           
                        Text("PASSWORD")
                            .font(.subheadline)
                        
                        HStack {
                            
                            SecureField(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/"Password"/*@END_MENU_TOKEN@*/, text: $password).textFieldStyle(.roundedBorder).foregroundColor(Color.b)
                            Button(action: {}, label: {
                            Image(systemName: "eye")
                            .font(.title)
                            })
                        }
                    }.padding().foregroundColor(.white)
                       
                       Button("SIGNIN") {
                           /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                       }.padding(8.0).frame(width: 120.0, height: 40.0).fontWeight(.bold ).foregroundColor(Color.b).background(Color.p)
                       
                   }.padding()
            
                       
                   }
            
           }
        
    }


    
#Preview {
    Login()
}
