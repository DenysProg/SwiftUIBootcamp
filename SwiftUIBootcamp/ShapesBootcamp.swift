//
//  ShapesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 03.11.2022.
//

import SwiftUI
import Kingfisher

struct ShapesBootcamp: View {
    var body: some View {
//        Text("Hello, World!")
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10, style: .circular)
            .frame(width: 200, height: 100)
//        Circle()
//            .fill(.red)
//            .foregroundColor(.black)
//            .stroke(.red)
//            .stroke(.black, lineWidth: 3)
//            .stroke(.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
//            .trim(from: 0.2, to: 1.0)
//            .stroke(lineWidth: 5)
        
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
