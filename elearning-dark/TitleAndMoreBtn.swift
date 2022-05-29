//
//  TitleAndMoreBtn.swift
//  elearning-dark
//
//  Created by S. Moustapha Sy Ndoye on 5/26/22.
//

import SwiftUI

struct TitleAndMoreBtn: View {
    
    let title: String
    
    var body: some View {
        HStack{
            Text(title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
            HStack {
                Button(action: {
                    print("See More Button Clicked !")
                }){
                    Text("See More")
                        .font(.title2)
                        .foregroundColor(Color("AccentColor"))
                    Image(systemName: "chevron.right")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color("AccentColor"))
                        .frame(width: 13, height: 13)
                }
            }
        }
    }
}
struct TitleAndMoreBtn_Previews: PreviewProvider {
    static var previews: some View {
        TitleAndMoreBtn(title: "Featured Posts")
            .previewLayout(.sizeThatFits)
            .padding()
            .foregroundColor(.white)
            .background(Color("background"))
    }
}
