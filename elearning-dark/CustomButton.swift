//
//  CustomButton.swift
//  elearning-dark
//
//  Created by S. Moustapha Sy Ndoye on 5/26/22.
//

import SwiftUI

struct CustomButton: View {
    var title : String
    var active: Bool
    
    var body: some View {
        Button(action: {
            print("Button Clicked !")
        }){
            Text(title)
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .padding(.horizontal, 40)
                .padding(.vertical, 20)
        }
        .frame(maxWidth: .infinity )
        .background(Color(active ? "AccentColor" : "grey"))
        .cornerRadius(20)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(title: "Button", active: true)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color("background"))
    }
}
