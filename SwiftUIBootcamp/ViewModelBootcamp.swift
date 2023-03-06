//
//  ViewModelBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 06.03.2023.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 88)
        let fruit4 = FruitModel(name: "Apples", count: 3)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.fruitArray.append(fruit4)
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {
    // @ObservedObject -> Use This For Subviews
    //    @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    // @StateObject -> Use This On Creation / Init
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
                                    NavigationLink(destination: {
                RandomScreen(fruitViewModel: fruitViewModel)
            }, label: {
                Image(systemName: "arrow.right")
                    .font(.title)
            })
            )
        }
    }
}

struct RandomScreen: View {
    @Environment(\.presentationMode) var presentetionMode
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                }
            }
//
//            Button {
//                presentetionMode.wrappedValue.dismiss()
//            } label: {
//                Text("Go Back")
//                    .foregroundColor(.white)
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//            }
//
        }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}
