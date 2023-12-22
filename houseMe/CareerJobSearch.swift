//
//  CareerJobSearch.swift
//  HouseMe
//
//  Created by Mercedes Barragan on 12/13/23.
//

import SwiftUI

struct CareerJobSearch: View {
    var body: some View {
        
        NavigationStack {
        
            ZStack {

                Color("284B63")
                    .ignoresSafeArea()
                
                VStack(spacing: 25.0) {
                    
                    Link("Resume Builder", destination: URL(string: "https://www.resumebuilder.com/")!)
                            .fontWeight(.regular)
                            .frame(width:200,height:75)
                            .font(.headline)
                            .foregroundColor(.black)
                            .background(Color("D9D9D9"))
                            .cornerRadius(20)
                   
                    NavigationLink(destination:ViewJobSearch()){
                        Text("Job Search")
                            .fontWeight(.regular)
                            .frame(width:200,height:75)
                            .font(.headline)
                            .foregroundColor(.black)
                            .background(Color("D9D9D9"))
                
                    }.buttonStyle(PlainButtonStyle())
                        .cornerRadius(20)
                    
                    NavigationLink(destination:ViewChatCareerCoach()){
                        Text("Connect with your Career Coach")
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .frame(width:200,height:75)
                            .font(.headline)
                            .foregroundColor(.black)
                            .background(Color("D9D9D9"))
                    }.buttonStyle(PlainButtonStyle())
                        .cornerRadius(20)
                }
            }
        }
    }
}

#Preview {
    CareerJobSearch()
}
