//
//  ForEachBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 14.11.2022.
//

import SwiftUI

struct ForEachBootcamp: View {
    let data: [String] = ["Hello", "Hi", "Hahahahah"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
//            ForEach(1..<11) { count in
//                HStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//                    Text("Index is: \(count)")
//                }
//            }
            
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index) ")
                    .background(.red)
            }
            .background(.blue)
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
