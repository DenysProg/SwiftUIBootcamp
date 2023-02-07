//
//  TernaryOperatorsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 02.02.2023.
//

import SwiftUI

struct TernaryOperatorsBootcamp: View {
    @State var isSrtartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                isSrtartingState.toggle()
            }
            
            Text(isSrtartingState ? "Starting State" : "Ending State")
            
            RoundedRectangle(cornerRadius: isSrtartingState ? 25.0 : 0.0)
                .fill(isSrtartingState ? Color.red : Color.blue)
                .frame(
                    width: isSrtartingState ? 200 : 50,
                    height: isSrtartingState ? 500 : 50)
            
            Spacer()
        }
    }
}

struct TernaryOperatorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperatorsBootcamp()
    }
}
