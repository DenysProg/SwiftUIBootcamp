//
//  NavigationViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 08.02.2023.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink {
                    MyOtherScreen()
                } label: {
                    Text("Hello world")
                }

                
                Text("Hello world")
                Text("Hello world")
                Text("Hello world")
            }
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
            .navigationBarItems(leading:
                                    HStack {
                Image(systemName: "person.fill")
                Image(systemName: "flame.fill")
            },
                                trailing: NavigationLink(destination: {
                MyOtherScreen()
            }, label: {
                Image(systemName: "gear")
            }))
            .accentColor(.red)        }
    }
}

struct MyOtherScreen: View {
    @Environment(\.presentationMode) var presentetionMode
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green screen")
                .navigationBarHidden(true)
            
            VStack {
                Button("Back Button") {
                    presentetionMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click here", destination: Text("3rd screen"))
            }
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
