//
//  FrameBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 07.11.2022.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World! Hello again")
//            .background(.red)
//            .frame(width: 300, height: 300, alignment: .leading)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//            .background(.yellow)
        
        /////////////////////////////////
            .background(.brown)
            .frame(height: 100, alignment: .top)
            .background(.orange)
            .frame(width: 150, alignment: .trailing)
            .background(.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.pink)
            .frame(height: 400)
            .background(.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(.red)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
