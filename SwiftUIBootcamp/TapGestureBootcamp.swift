//
//  TapGestureBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 03.03.2023.
//

import SwiftUI

struct TapGestureBootcamp: View {
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 30)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(20)
            }
            Text("Tap Gesture")
            .font(.headline)
            .foregroundColor(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.blue)
            .cornerRadius(20)
//            .onTapGesture {
//                isSelected.toggle()
//            }
            .onTapGesture(count: 2) {
                isSelected.toggle()
            }
            
            Spacer()
        }
        .padding(40)
    }
}

struct TapGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureBootcamp()
    }
}
