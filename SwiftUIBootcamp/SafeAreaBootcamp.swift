//
//  SafeAreaBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 24.11.2022.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        VStack {
            ScrollView {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(10)
                }
            }
        }
//        .background(.blue)
        .background(
            Color.red
                .ignoresSafeArea()
        )
        

//        ZStack {
//            // background
//            Color.red
//                .edgesIgnoringSafeArea(.all)
//
//            Color.blue
////                .edgesIgnoringSafeArea(.all)
//
//            // foreground
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
////                    .padding(.top, 50)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
////            .background(.red)
////            .edgesIgnoringSafeArea(.all)
//        }
            
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
