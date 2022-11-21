//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 07.11.2022.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
//        Text("Hello, World!")
//            .foregroundColor(.white)
//            .background(
////                .red
////                LinearGradient(
////                    gradient: Gradient(colors: [.red, .blue]),
////                    startPoint: .leading,
////                    endPoint: .trailing)
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [.black, .yellow]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100, height: 100, alignment: .center)
//            )
//
//            .background(
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [.yellow, .black]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 120, height: 120, alignment: .center)
//            )
        
//        Circle()
//            .fill(.pink)
//            .frame(width: 100, height: 100)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            )
//            .background(
//                Circle()
//                    .fill(.purple)
//                    .frame(width: 110, height: 110)
//            )
        
        
//        Rectangle()
//            .fill(.black)
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 50, height: 50)
//                , alignment: .topLeading
//            )
//            .background(
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150)
//                , alignment: .bottomTrailing
//            )
        
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.red)
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [.yellow, .white]), startPoint: .leading, endPoint: .trailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .yellow.opacity(0.5), radius: 10, x: 0.0, y: 10)
                    .overlay(
                        Circle()
                            .fill(.yellow)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("1")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: .yellow.opacity(0.5), radius: 10, x: 5, y: 5)
                        , alignment: .bottomTrailing
                    )
            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
