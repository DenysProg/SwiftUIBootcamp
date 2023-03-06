//
//  BadgesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 06.03.2023.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        TabView {
            List {
                Text("hello")
                    .badge(5)
                Text("hello")
                    .badge("New")
                Text("hello")
                Text("hello")
            }
            
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("hello")
                }
                .badge(10)
            
            Color.yellow
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("hello")
                }
                .badge("New")
            
            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("hello")
                }
        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
