//
//  Calendar.swift
//  elearning-dark
//
//  Created by S. Moustapha Sy Ndoye on 5/26/22.
//

import SwiftUI

struct Calendar: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack{
                    Image(systemName: "chevron.left")
                        .font(.system(size: 30))
                    VStack{
                        Text("Lessons")
                        
                    }
                }
            }
        }
        .ignoresSafeArea()
        .foregroundColor(.white)
        .background(Color("background"))
    }
}

struct Calendar_Previews: PreviewProvider {
    static var previews: some View {
        Calendar()
    }
}
