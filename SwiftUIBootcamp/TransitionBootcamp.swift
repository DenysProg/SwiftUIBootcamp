//
//  TransitionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 06.02.2023.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack() {
                Button("Button") {
//                    withAnimation(.default.speed(0.1)) {
                        showView.toggle()
//                    }
                    
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30.0)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .animation(.easeInOut, value: showView)
                    .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .bottom)))
//
//                    .transition(AnyTransition.scale.animation(.easeInOut))
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
            }
        }
        .animation(.easeInOut, value: showView)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
