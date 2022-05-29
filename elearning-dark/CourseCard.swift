//
//  CourseCard.swift
//  elearning-dark
//
//  Created by S. Moustapha Sy Ndoye on 5/26/22.
//

import SwiftUI

struct CourseCard: View {
    
    let course: Course
    
    var body: some View {
        VStack{
            Image(course.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(25)
                .frame(width: 300, height: 170)
            VStack(alignment: .leading) {
                Text(course.origin)
                    .foregroundColor(.gray)
                    .padding(.top, 10)
                Text(course.title)
                    .font(.title2)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(height: 60)
                    .padding(.top, 5)
                HStack{
                    HStack{
                        Image(systemName: "star.fill")
                            .foregroundColor(Color("AccentColor"))
                        Text(String(course.rating))
                    }
                    Spacer()
                    Text(course.category)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal, 14)
                        .padding(.vertical, 7)
                        .background(Color("AccentColor").opacity(0.3))
                        .foregroundColor(Color("AccentColor"))
                        .cornerRadius(15)
                }
                .padding(.top, 20)
                .padding(.bottom, 25)
            }
            .padding(.horizontal, 20)
            .frame(width: 300)
        }
        .foregroundColor(Color.white)
        .background(Color("grey"))
        .cornerRadius(25)
    }
}

struct CourseCard_Previews: PreviewProvider {
    static var previews: some View {
        CourseCard(course: courses[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color("background"))
    }
}
