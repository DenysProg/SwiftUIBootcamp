//
//  BackgroundMaterialBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 06.03.2023.
//

import SwiftUI

struct BackgroundMaterialBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {

                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Text("Hello Denys")
                Spacer()
            }
            .frame(height: 300)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("photo")
        )
    }
}

struct BackgroundMaterialBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialBootcamp()
    }
}
