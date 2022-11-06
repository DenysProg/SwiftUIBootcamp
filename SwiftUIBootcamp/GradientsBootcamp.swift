//
//  GradientsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 04.11.2022.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.red
//                LinearGradient(
//                    gradient: Gradient(colors: [.red, .blue]),
//                    startPoint: .topLeading,
//                    endPoint: .bottom)
//                RadialGradient(gradient: Gradient(colors: [.red, .blue]), center: .topLeading, startRadius: 15, endRadius: 400)
                AngularGradient(
                    gradient: Gradient(colors: [.red, .white]),
                    center: .topLeading,
                    angle: .degrees(180 + 45))
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
