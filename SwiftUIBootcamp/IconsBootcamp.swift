//
//  IconsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 04.11.2022.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
//            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .scaledToFit()
//            .font(.largeTitle)
//            .font(.system(size: 250))
            .foregroundColor(.black)
//            .frame(width: 300, height: 300)
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
