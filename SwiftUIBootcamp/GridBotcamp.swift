//
//  GridBotcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 24.11.2022.
//

import SwiftUI

struct GridBotcamp: View {
//    let columns: [GridItem] = [
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil)
//    ]
    
//    let columns: [GridItem] = [
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil)
//    ]
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
//            ScrollView(.horizontal) {
//                LazyHGrid(rows: columns) {
//                    ForEach(0..<50) { index in
//                        RoundedRectangle(cornerRadius: 65)
//                            .fill(.yellow)
//                            .frame(width: 300, height: 300)
//                    }
//                }
//            }
//
//            LazyVGrid(columns: columns) {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .frame(height: 50)
//                }
//            }
            
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: .sectionHeaders) {
                Section(header:
                            Text("Section 1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.blue)
                    .padding()
                ) {
                    ForEach(0..<50) { index in
                        Rectangle()
                            .frame(height: 50)
                    }
                }
                
                Section(header:
                            Text("Section 2")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.red)
                    .padding()
                ) {
                    ForEach(0..<50) { index in
                        Rectangle()
                            .fill(.gray)
                            .frame(height: 50)
                    }
                }
            }
        }
    }
}

struct GridBotcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBotcamp()
    }
}
