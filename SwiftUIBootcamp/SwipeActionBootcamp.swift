//
//  SwipeActionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 06.03.2023.
//

import SwiftUI

struct SwipeActionBootcamp: View {
    @State var fruits: [String] = ["apple", "orange", "banana", "peach"]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {
                            
                        }
                        .tint(.green)
                        Button("Archive") {
                            
                        }
                        .tint(.black)
                        Button("Archive") {
                            
                        }
                        .tint(.blue)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button("Share") {
                            
                        }
                        .tint(.yellow)
                    }
            }
            .onDelete(perform: deleteItem)
        }
    }
    
    func deleteItem(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
}

struct SwipeActionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionBootcamp()
    }
}
