//
//  CustomAppBar.swift
//  elearning-dark
//
//  Created by S. Moustapha Sy Ndoye on 5/26/22.
//

import SwiftUI

struct CustomAppBar: View {
    var body: some View {
        HStack{
            Text(appName)
                .font(.system(size: 30))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
            Image("avatar")
                .resizable()
                .frame(width: 65, height: 65)
                .clipped()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(50)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .onTapGesture(perform: {
                    print("User Avatar Button Taped !")
                })
        }
    }
}


struct CustomAppBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomAppBar()
            .foregroundColor(.white)
            .padding()
            .previewLayout(.sizeThatFits)
            .background(Color("background"))
    }
}
