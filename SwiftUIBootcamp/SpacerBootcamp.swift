//
//  SpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 08.11.2022.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
    //            Spacer(minLength: 0)
    //                .frame(height: 10)
    //                .background(.yellow)
    //
    //            Rectangle()
    //                .frame(width: 50, height: 50, alignment: .center)
    //
    //            Spacer()
    //                .frame(height: 10)
    //                .background(.yellow)
    //
    //            Rectangle()
    //                .fill(Color.green)
    //                .frame(width: 50, height: 50, alignment: .center)
    //
    //            Spacer()
    //                .frame(height: 10)
    //                .background(.yellow)
    //
    //            Rectangle()
    //                .fill(Color.red)
    //                .frame(width: 50, height: 50, alignment: .center)
    //
    //            Spacer()
    //                .frame(height: 10)
    //                .background(.yellow)
                
                Image(systemName: "xmark")
                 Spacer()
                    .frame(height: 10)
//                    .background(.orange)
                Image(systemName: "gear")
                    
            }
            .font(.title)
//            .background(.brown)
            .padding(.horizontal)
//            .background(.blue)
            Color(#colorLiteral(red: 0.5, green: 0, blue: 0, alpha: 1))
           Color(#colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1))
            Spacer()
            
            Rectangle()
                .frame(height: 55)
        }
//        .background(.yellow)
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
