//
//  AnimationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 02.02.2023.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated: Bool = false
    @State private var animationAmount = 1.0
    
    var body: some View {
        VStack {
            Button("Button") {
//                withAnimation(.default.repeatCount(6, autoreverses: false)) {
                    isAnimated.toggle()
                animationAmount += 1
//                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50.0 : 25.0)
                .fill(isAnimated ? Color.gray : Color.yellow)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(
                    .easeInOut(duration: 1)
                        .repeatCount(3, autoreverses: true),
                    value: animationAmount
                )
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
