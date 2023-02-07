//
//  ExtractSubviewsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 05.01.2023.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            
           
          contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyView(title: "LOX", count: 10, color: .red)
            MyView(title: "Pidar", count: 10, color: .yellow)
            MyView(title: "4MO", count: 30, color: .brown)
        }
    }
 
}

struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}

struct MyView: View {
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
