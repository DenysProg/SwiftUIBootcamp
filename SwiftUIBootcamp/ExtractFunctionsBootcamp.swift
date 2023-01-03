//
//  ExtractFunctionsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 03.01.2023.
//

import SwiftUI

struct ExtractFunctionsBootcamp: View {
    @State var backgoroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            backgoroundColor.edgesIgnoringSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            Button {
                buttonPressed()
            } label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
    }
    
    func buttonPressed() {
        backgoroundColor = .yellow
    }
}

struct ExtractFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractFunctionsBootcamp()
    }
}
