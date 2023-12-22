//
//  JobPicker.swift
//  HomePage
//
//  Created by Esther Stevens on 12/19/23.
//


import SwiftUI
struct JobPicker: View {
    
    var skills = ["Coding", "Negotiation", "Communication"]
    @State private var selectedSkill = ""
    
    var industry = ["Technology", "Finance", "Hospitality"]
    @State private var selectedIndus = ""
    
    var locations = ["Detroit", "Chicago", "Atlanta"]
    @State private var selectedLoc = ""
    
    
    var body: some View {
            ZStack {
                Color("284B63")
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    Spacer()
                    Image("logo 1").resizable().frame(width: 125.0, height: 75.0).padding(.bottom, 50.0)
                    
                        .frame(width: 100, height:150)
                    
                    Form{
                        Section(header: Text("Skills")
                            .font(.headline)
                            .foregroundColor(Color.white)){
                                Picker("Select a skill", selection: $selectedSkill) {
                                    ForEach(skills, id: \.self) {
                                        Text($0)
                                    }
                                }
                                .pickerStyle(.automatic)
                                
                            }
                        
                        Section(header: Text("Industry")
                            .font(.headline)
                            .foregroundColor(Color.white)){
                                Picker("Select an industry", selection: $selectedIndus) {
                                    ForEach(industry, id: \.self) {
                                        Text($0)
                                    }
                                }
                                .pickerStyle(.automatic)
                                
                            }
                        
                        Section(header: Text("Location")
                            .font(.headline)
                            .foregroundColor(Color.white)){
                                Picker("Select a location", selection: $selectedLoc) {
                                    ForEach(locations, id: \.self) {
                                        Text($0)
                                    }
                                }
                                .pickerStyle(.automatic)
                            
                            }
                            .frame(maxHeight:25)
                        
                    }
                    .scrollContentBackground(.hidden)

                    NavigationLink (destination:
                                    JobResults()){
                        Text("Submit")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color("536F82"))
                            .frame(width: 100, height: 50)
                            .background(Color("D9D9D9"))
                            .padding()
                        
                            
                    
                        
                    }
                                    .padding(.bottom, 100.0)
                }
            }
        }
        
    }

#Preview {
    JobPicker()
}
