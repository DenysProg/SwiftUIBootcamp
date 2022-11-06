//
//  TextBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 03.11.2022.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! Created by Denys Nikolaichuk on 03.11.2022.".capitalized)
//            .font(.title)
//            .fontWeight(.semibold)
//            .underline(true, color: .red)
//            .strikethrough(true, color: .green)
//            .font(.system(size: 24, weight: .semibold, design: .rounded))
//            .baselineOffset(10)
//            .kerning(20)
            .multilineTextAlignment(.center)
            .foregroundColor(.green)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(1)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
