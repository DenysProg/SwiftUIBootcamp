//
//  PickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 28.02.2023.
//

import SwiftUI

enum MyFruit {
    case banana, apple, peach
}

struct PickerBootcamp: View {
    @State var selection: String = "1"
    @State var favoriteFruit: MyFruit = MyFruit.banana
    
    @State private var selectedTheme = "Dark"
    let themes = ["Dark", "Light", "Automatic"]
    
    var fruitName: String {
        switch favoriteFruit {
        case .banana:
            return "Banana 🍌🍌"
        case .apple:
            return "Apple 🍎🍎"
        case .peach:
            return "Peach 🍑🍑"
        }
    }
    
    var body: some View {
//        VStack {
//            Text("My Favorite Fruit: \(fruitName)")
//
//            Picker("Me Picker", selection: $favoriteFruit) {
//                Text("Banana 🍌🍌")
//                    .tag(MyFruit.banana)
//                Text("Apple 🍎🍎")
//                    .tag(MyFruit.apple)
//                Text("Peach 🍑🍑")
//                    .tag(MyFruit.peach)
//            }
//            .pickerStyle(.segmented)
//        }
        
        
        
        Form {
            Picker("Filter: ", selection: $selectedTheme) {
                ForEach(themes, id: \.self) {
                    Text($0)
                    Image(systemName: "heart.fill")
                }
            }
        }
        .font(.headline)
        .foregroundColor(.yellow)
        
        
        
        
//        VStack {
//            Text("My Favorite Fruit: \(fruitName)")
//
//            Picker("My Picker", selection: $favoriteFruit) {
//
//                HStack {
//                    Text("Banana 🍌🍌")
//                        .tag(MyFruit.banana)
//                    Text("Apple 🍎🍎")
//                        .tag(MyFruit.apple)
//                    Text("Peach 🍑🍑")
//                        .tag(MyFruit.peach)
//                }
//                .font(.headline)
//                .foregroundColor(.white)
//            }
//            .pickerStyle(MenuPickerStyle())
//        }
   

        
        
//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//
//            Picker(selection: $selection) {
//                ForEach(18..<100) { number in
//                    Text("\(number)")
//                        .font(.headline)
//                        .foregroundColor(.red)
//                        .tag("\(number)")
//                }
//            } label: {
//                Text("Hello, World!")
//            }
//            .background(.gray.opacity(0.3)).cornerRadius(10)
//            .pickerStyle(.menu)
//        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
