//
//  SheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 07.02.2023.
//

import SwiftUI

struct SheetBootcamp: View {
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.gray
                .edgesIgnoringSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.gray)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
            .fullScreenCover(isPresented: $showSheet) {
                SecondScreen()
            }
//            .sheet(isPresented: $showSheet) {
//                SecondScreen()
//            }
        }
    }
}

struct SecondScreen: View {
    @Environment(\.presentationMode) var presentetionMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button {
                presentetionMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

struct SheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetBootcamp()
//        SecondScreen()
    }
}
