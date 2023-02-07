//
//  AnimationCurvesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 03.02.2023.
//

import SwiftUI

struct AnimationCurvesBootcamp: View {
    @State var isAnimating: Bool = false
    @State private var animationAmount: Float = 1.0
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
                animationAmount += 1
                print(animationAmount)
            }
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.linear(duration: timing), value: animationAmount)
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.7,
                    blendDuration: 1.0), value: animationAmount)
            
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing), value: animationAmount)
//
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing), value: animationAmount)
//
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing), value: animationAmount)
            
        }
    }
}

struct AnimationCurvesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCurvesBootcamp()
    }
}
