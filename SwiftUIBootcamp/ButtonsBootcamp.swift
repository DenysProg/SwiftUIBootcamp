//
//  ButtonsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 24.11.2022.
//

import SwiftUI

struct ButtonsBootcamp: View {
    @State var title: String = "This is my title"
    @State var changeColorButton: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
//            Text(title)
//
//            Button("Press me!") {
//                self.title = "Button was pressed"
//
//            }
//            .accentColor(.red)
//
            Button {
                self.title = "Button number 2 was pressed"
                self.changeColorButton.toggle()
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
//                    .background(
//                        Color.blue
//                            .cornerRadius(10)
//                            .shadow(radius: 10)
//                    )
            }
            .background(changeColorButton ? .red : .green)
            
            Button {
                self.title = "Button number 3"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Text("❤️")
                            .font(.largeTitle)
                        , alignment: .center
                            
                    )
            }
            
            Button {
                self.title = "Button number 4"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.black, lineWidth: 3.0)
                    )
            }
        }
    }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootcamp()
    }
}
