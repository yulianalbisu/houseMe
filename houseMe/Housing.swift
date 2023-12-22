//
//  HousingMain.swift
//  houseMe
//
//  Created by yuliana aldrich on 12/20/23.
//

import SwiftUI

struct HousingMain: View {
    @State var currentTime = Date()
    var closedRange = Calendar.current.date(byAdding: .year, value: -1, to: Date())!
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color("284B63").ignoresSafeArea()
                
                       VStack {
                           Image("logo 1").resizable().frame(width: 125.0, height: 75.0)
                           
                           
                           VStack(
                            alignment: .leading,
                            spacing: 10
                        ){
                            Text("BUDGET")
                                .font(.subheadline)
                            HStack {
                                Inputs()
                                
                                     Image(systemName: "rectangle.and.pencil.and.ellipsis")
                            }
                               
                           
                                Text("DATE GOAL")
                                    .font(.subheadline)
                                    .multilineTextAlignment(.leading)
                                
                                    
                                        DatePicker("Pick your target date:", selection: $currentTime, in: Date()...).datePickerStyle(.automatic).accentColor(Color("D9D9D9")).padding().background(Color.white.opacity(0.5), in: RoundedRectangle(cornerRadius: 5)).labelsHidden()
                                
                            
                            
                            
                        }.padding(.bottom, 50.0).foregroundColor(.white)
                           
                           Button("SUBMIT") {
                               /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                           }.padding(8.0).frame(width: 120.0, height: 40.0).fontWeight(.bold ).foregroundColor(Color("284B63")).background(Color("D9D9D9"))
                           
                       }.padding()
                
                           
            }
        }
    }
}

#Preview {
    HousingMain()
}
