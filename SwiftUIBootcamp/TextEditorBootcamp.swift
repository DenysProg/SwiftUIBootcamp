//
//  TextEditorBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 16.02.2023.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State var textEditorText: String = "This is the starting text"
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
//                    .foregroundColor(.red)
                    .colorMultiply(.red)
                    .cornerRadius(10)
                Button {
                    savedText = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(10)
                }
                Text(savedText)
                
                Spacer()
            }
            .padding()
            .background(.yellow)
            .navigationTitle("Text Editor")
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
