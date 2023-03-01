//
//  ListBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 08.02.2023.
//

import SwiftUI

struct ListBootcamp: View {
    @State var fruits: [String] = ["apple", "orange", "banana", "peach"]
    @State var veggies: [String] = ["tomato", "potato", "carrot"]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.title)
                        .foregroundColor(.orange)
                ) {
                    ForEach(fruits, id: \.self) { item in
                        Text(item.capitalized)
                            .font(.title3)
                            .foregroundColor(.white)
                            .background(.pink)
                            .cornerRadius(10)
                            .padding(.vertical)
                    }
                    .onDelete(perform: deleteItem)
                    .onMove(perform: move)
                    .listRowBackground(Color.pink)
                }
                
                Section(
                    header:
                        HStack {
                            Text("Veggies")
                            Image(systemName: "cloud")
                        }
                        .font(.title)
                        .foregroundColor(.green)
                ) {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                }
            }
            .accentColor(.red)
            //.listStyle(InsetGroupedListStyle()) //GroupedListStyle()
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(),
                                trailing: addButton)
        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    func deleteItem(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indeces: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indeces, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
