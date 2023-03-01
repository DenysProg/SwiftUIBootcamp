//
//  ColorPickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 01.03.2023.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            ColorPicker("Select color",
                        selection: $backgroundColor,
                        supportsOpacity: true)
            .padding()
            .background(.black)
            .cornerRadius(30)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        }
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}
