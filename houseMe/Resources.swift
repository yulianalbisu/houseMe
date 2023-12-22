//
//  Resources.swift
//  HouseMe
//
//  Created by Mercedes Barragan on 12/13/23.
//

import SwiftUI

struct Resources: View {
    var body: some View {
        ZStack {
            Color("284B63")
                .ignoresSafeArea()
            
            VStack(spacing: 25.0) {
                
                Text("Resources")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 0.0)
                Text ("Financial E-Book")
                    .foregroundColor(Color.white)
                    .padding(.top, 50.0)
                    .fontWeight(.bold)
                    .foregroundColor(Color("D9D9D9"))
                Link (destination: URL(string: "https://www.scc.virginia.gov/getattachment/9d25dae4-149b-4e40-abd6-5b1e764fefec/BuildWealth.pdf")!){
                Image(systemName: "text.book.closed.fill")
                    .font(.system(size: 75))
                    .padding(.top, 0.0)
                    .padding(.bottom, 0.0)
                    .fontWeight(.bold)
                    .foregroundColor(Color("D9D9D9"))
            }
                
                Text("Recorded Sessions")
                    .foregroundColor(Color.white)
                    .padding(.top, 50.0)
                    .fontWeight(.bold)
                    .foregroundColor(Color("D9D9D9"))
                Link(destination: URL(string: "https://www.youtube.com/watch?v=4XZIv4__sQA")!){
                    Image(systemName: "video.fill")
                        .font(.system(size: 75))
                        .fontWeight(.bold)
                        .foregroundColor(Color("D9D9D9"))
                        .padding(.top, 0.0)
                        .padding(.bottom, 0.0)
                }
                Text("Watch Live Sessions")
                    .foregroundColor(Color.white)
                    .padding(.top, 50.0)
                    .fontWeight(.bold)
                    .foregroundColor(Color("D9D9D9"))
                    .foregroundColor(Color("D9D9D9"))
                Link(destination: URL(string: "https://www.youtube.com/watch?v=jRFnF2e2MlY")!){
                    Image(systemName:"person.2.fill")
                        .font(.system(size: 75))
                        .fontWeight(.bold)
                        .foregroundColor(Color("D9D9D9"))
                        .padding(.top, 0.0)
                        .padding(.bottom, 0.0)
                }
            }
        }
    }
}
#Preview {
    Resources()
}
