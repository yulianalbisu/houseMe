//
//  JobResults.swift
//  HomePage
//
//  Created by Esther Stevens on 12/19/23.
//

import SwiftUI

struct JobResults: View {
    @State var selectedCategory: Category = categories[0]
    var body: some View {
        ZStack {
            Color("blue")
                .background(._284_B_63)
                .ignoresSafeArea()
            ScrollView {
                
                VStack(spacing: 20) {
                    Image("logo 1").resizable()
                        .frame(width: 125.0, height: 75.0)
                    VStack(alignment: .leading) {
                        Text("Hello, Jobseeker!")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                            .padding(.top)
                        Text("Hot jobs are waiting for you here!")
                            .font(.title2)
                            .foregroundColor(.D_9_D_9_D_9)
                            .fontWeight(.bold)
                            .padding(.horizontal)
                        JobCardView()
                        CategoryListView(selectedCategory: self.$selectedCategory)
                        ForEach(jobs, id: \.id) { job in
                            JobSmallCardView(job: job)
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                }
                Spacer()
                
            }
            .padding(.bottom, 5.0)
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    JobResults()
}
struct JobCardView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Color("blue")
                .aspectRatio(4, contentMode: .fit)
                .cornerRadius(25)
            HStack(alignment: .bottom){
                VStack(alignment: .leading, spacing: 5){
                    Text("UI/UX Designer")
                        .fontWeight(.bold)
                        .foregroundColor(.D_9_D_9_D_9)
                    Text("Symbology  .  Detroit")
                        .foregroundColor(.white)
                }
                .padding(.bottom, screen.width * 0.055)
                Spacer()
                Image(systemName: "desktopcomputer")
                    .resizable()
                    .foregroundColor(.D_9_D_9_D_9)
                    .frame(width: screen.width * 0.2, alignment: .bottom)
                    .aspectRatio(1.8, contentMode: .fill)
            }
            .padding(.horizontal, 25)
        }
    }
}
struct CategoryListView: View {
    @Binding var selectedCategory: Category
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false){
            HStack {
                ForEach(categories) {category in
                    Text(category.name)
                        .foregroundColor(Color(._536_F_82))
                        .fontWeight(.bold)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 5)
                        .background(Color(.D_9_D_9_D_9))
                        .clipShape(Capsule())
                        .onTapGesture {
                            self.selectedCategory = category
                        }
                }
            }
            .padding(.all)
        }
    }
}
struct JobSmallCardView: View {
    var job: Job
    var body: some View {
        HStack{
            VStack(alignment:.leading) {
                Text(job.title)
                    .font(.system(size: 19, weight: .bold))
                    .foregroundColor(Color._536_F_82)
                    .padding(.bottom, 4)
                
                Text(job.location)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(Color._536_F_82)
            }
            Spacer()
            Image(systemName: job.image)
                .font(.system(size: 30, weight: .medium))
                .foregroundColor(Color.white)
        }
        .padding(.all)
        .background(Color(job.bgColor))
        .cornerRadius(25)
        .padding(.horizontal)
        .padding(.vertical, 3)
        
    }
}
