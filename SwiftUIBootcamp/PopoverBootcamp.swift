//
//  PopoverBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 07.02.2023.
//

import SwiftUI

struct PopoverBootcamp: View {
    @State var showScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("BUTTON") {
                    showScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            
            // Method 1 - sheet
    //        .sheet(isPresented: $showScreen) {
    //            NewScreen()
    //        }
            
            // Method 2 - transition
//            ZStack {
//                if showScreen {
//                    NewScreen(showScreen: $showScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                }
//            }
//            .animation(.spring(), value: showScreen)
//            .zIndex(2.0)
            
            // Method 2 - offset
            NewScreen(showScreen: $showScreen)
                .padding(.top, 100)
                .offset(y: showScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: showScreen)
        }
    }
}

struct NewScreen: View {
    @Environment(\.presentationMode) var presentetionMode
    @Binding var showScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button {
//                presentetionMode.wrappedValue.dismiss()
                showScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
    }
}
