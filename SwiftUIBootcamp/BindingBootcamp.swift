//
//  BindingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 06.01.2023.
//

import SwiftUI

struct BindingBootcamp: View {
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String
    
    var body: some View {
        Button {
            backgroundColor = Color.yellow
            buttonColor = Color.pink
            title = "New title!!!!"
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
