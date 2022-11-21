//
//  PeddingAndSpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 08.11.2022.
//

import SwiftUI

struct PeddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
    //            .background(.yellow)
    //            .padding()
    //            .padding(.all, 10)
    //            .padding(.leading, 20)
    //            .background(.blue)
            
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom)
            
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
                .multilineTextAlignment(.leading)
        }
//        .background(.blue)
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: .black.opacity(0.3),
                    radius: 10,
                    x: 0.0, y: 10
                )
        )
        .padding(.horizontal, 10)
//        .background(.green)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .padding(.leading)
    }
}

struct PeddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PeddingAndSpacerBootcamp()
    }
}
