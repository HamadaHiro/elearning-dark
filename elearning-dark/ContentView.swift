//
//  ContentView.swift
//  elearning-dark
//
//  Created by S. Moustapha Sy Ndoye on 5/26/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var activeButtons = [true, false]
    
    func toggleButton() {
        activeButtons[0] = false;
        activeButtons[1] = true;
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack{
                CustomAppBar()
                    .padding(.top, 30)
                HStack{
                    CustomButton(title: "Courses", active: activeButtons[0])
                    CustomButton(title: "Podcasts", active: activeButtons[1])
                }
                .background(Color("grey"))
                .cornerRadius(20)
                .padding(.top, 20)
                TitleAndMoreBtn(title: "Top")
                    .padding(.top, 20)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 25) {
                        ForEach (courses, id:\.id) { course in
                            CourseCard(course : course)
                        }
                    }
                }
                VStack(alignment: .leading) {
                    HStack {
                        Text("My courses")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    
                    VStack(spacing: 20) {
                        ReadingCourse(title: "Portfolio Optomization Using Markowitz Model", img: "5", progress: 49)
                        ReadingCourse(title: "Creating a Trading Business Model", img: "4", progress: 95)
                    }
                }
                .padding(.top, 20)
                .frame(maxWidth: .infinity)
                Spacer()
            }
        }
        .padding(.horizontal, 25)
        .background(Color("background"))
        .foregroundColor(.white)
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
