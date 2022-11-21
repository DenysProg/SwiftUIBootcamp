//
//  InitializerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 14.11.2022.
//

import SwiftUI

enum Fruits {
    case apples
    case oranges
}

struct InitializerBootcamp: View {
    let backgroundColor: Color
    let count: Int
    let title: String
    let fruits: Fruits
    
    init(count: Int, fruits: Fruits) {
        self.fruits = fruits
        self.count = count
        
        switch self.fruits {
        case .apples:
            self.backgroundColor = .red
            self.title = "Apples"
        case .oranges:
            self.backgroundColor = .orange
            self.title = "Oranges"
        }
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text(String(count))
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
                
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializerBootcamp(count: 50, fruits: .apples)
            InitializerBootcamp(count: 30, fruits: .oranges)
        }
    }
}
