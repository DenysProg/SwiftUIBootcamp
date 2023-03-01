//
//  ContextMenuBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 15.02.2023.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    @State var backgroundColor: Color = .red
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.headline)
            Text("How to use Context menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor).cornerRadius(30)
        .contextMenu {
            
            Button {
                backgroundColor = .blue
            } label: {
                Label("Share post", systemImage: "flame.fill")
            }
            
            Button {
                backgroundColor = .yellow
            } label: {
                Text("Repost post")
            }
            
            Button {
                backgroundColor = .black
            } label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            }
        }
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
