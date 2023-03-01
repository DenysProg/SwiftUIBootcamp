//
//  ActionSheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 14.02.2023.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    @State var showActionSheet: Bool = false
    @State var actionSheetOptions: ActionSheetOptions = .isOtherPost
    var title: String = "Are you sure?"
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
//        Button("Click me") {
//            showActionSheet = true
//        }
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    actionSheetOptions = .isMyPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .tint(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .confirmationDialog(title, isPresented: $showActionSheet, titleVisibility: .visible) {
            switch actionSheetOptions {
            case .isMyPost:
                getDialog()
            case .isOtherPost:
                cancel()
            }
        }
    }
    
    func getDialog() -> some View {
        return Button("Delete all items", role: .destructive) {

        }
    }
    
    func cancel() -> some View {
        return Button("Lol", role: .none) {
        }
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
