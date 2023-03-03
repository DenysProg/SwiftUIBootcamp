//
//  SliderBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 01.03.2023.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var sliderValue: Double = 3.0
    @State var color: Color = .blue
    
    var body: some View {
        VStack {
            Text("Rating: ")
            Text(
//                "\(sliderValue)"
                String(format: "%.0f", sliderValue)
            )
            .foregroundColor(color)
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 0...100)
//            Slider(value: $sliderValue, in: 1...5, step: 0.5)
            Slider(value: $sliderValue,
                   in: 1...5,
                   step: 1.0,
                   onEditingChanged: { (_) in
                color = .green
            },
                   minimumValueLabel: Text("1"),
                   maximumValueLabel: Text("5"),
                   label: {
                Text("Title")
            })
                .tint(.red)
        }
        
        
       
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
