//
//  ReadingCourse.swift
//  elearning-dark
//
//  Created by S. Moustapha Sy Ndoye on 5/26/22.
//

import SwiftUI

struct ReadingCourse: View {
    
    var title: String
    var img: String
    var progress: Int
    
    var body: some View {
        HStack{
            Image(String(img))
                .resizable()
                .frame(width: 130, height: 130)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(25)
            VStack{
                Text(title)
                    .font(.system(size: 19))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                VStack {
                    HStack {
                        Text(String("\(progress)%"))
                            .foregroundColor(Color("AccentColor"))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        ZStack(alignment: .leading){
                            Rectangle()
                                .frame(height: 10)
                                .foregroundColor(Color("AccentColor").opacity(0.1))
                                .cornerRadius(5)
                            Rectangle()
                                .frame(height: 10)
                                .frame(maxWidth: 100)
                                .foregroundColor(Color("AccentColor"))
                                .cornerRadius(5)
                        }
                    }
                }
            }
            .padding()
        }
        .onTapGesture {
            print("Taped !")
        }
        .background(Color("grey"))
        .cornerRadius(25)
    }
}


struct ReadingCourse_Previews: PreviewProvider {
    static var previews: some View {
        ReadingCourse(title: "Lorem ipsum dolor sit amet adisciping elit", img: "2", progress: 25)
            .foregroundColor(.white)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color("background"))
    }
}
