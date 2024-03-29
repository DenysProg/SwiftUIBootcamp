//
//  TabViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 01.03.2023.
//

import SwiftUI

class Clss {
    var icons: [String] = ["heart.fill", "globe", "house.fill"]
    var tag = 0
}

struct TabViewBootcamp: View {
    @State var selectedTab: Int = 0
    let model: Clss?
    
    var handler: Binding<Int> { Binding(
        get: { self.selectedTab },
        set: {
            if $0 == self.selectedTab {
                print("Reset here!!")
            }
            self.model?.icons.shuffle()
            self.selectedTab = $0
        }
    )}
    
    var body: some View {
//        TabView {
//            ForEach(icons, id: \.self) { icon in
//                Image(systemName: icon)
//                    .resizable()
//                    .scaledToFit()
//                    .padding(30)
//            }
//        }
//        .background(
//            RadialGradient(gradient: Gradient(colors: [.red, .blue]), center: .center, startRadius: 5, endRadius: 300)
//        )
//        .cornerRadius(10)
//        .frame(width: 400, height: 300)
//        .tabViewStyle(PageTabViewStyle())
        
        
        
        
        TabView(selection: handler) {
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            Text("Browse tab")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(5)
            
//            ForEach(self.model?.icons ?? [], id: \.self) { icon in
//                Text(icon)
//                    .tabItem {
//                        Image(systemName: "person.fill")
//                        Text(icon)
//                    }
//                    .tag(7)
//            }
            
            Text("Profile tab")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(4)
        }
        .tint(.red)
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp(model: Clss())
    }
}

struct HomeView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea(.keyboard)
            VStack {
                Text("Home tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}
