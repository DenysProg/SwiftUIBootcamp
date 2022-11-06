//
//  ImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 04.11.2022.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("nike")
//            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFill()
            .scaledToFit()
            .frame(width: 300, height: 200)
            .foregroundColor(.red)
//            .clipped()
//            .cornerRadius(150)
//            .clipShape(
//                Circle()
//                RoundedRectangle(cornerRadius: 25.0)
//                Ellipse()
//            )
        
         
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
