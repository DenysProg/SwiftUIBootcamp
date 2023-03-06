//
//  FocusStateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 06.03.2023.
//

import SwiftUI

struct FocusStateBootcamp: View {
    enum OnBoardingFilds: Hashable {
        case username
        case password
    }


    @State private var userName: String = ""
//    @FocusState private var userNameInFocus: Bool
    @State private var password: String = ""
//    @FocusState private var passwordInFocus: Bool
    @FocusState private var fieldInFocus: OnBoardingFilds?
    
    var body: some View {
        VStack {
            TextField("Add your name ..", text: $userName)
//                .focused($userNameInFocus)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your password ..", text: $password)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("Sign Up") {
                let usernameIsValid = !userName.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("Sign In")
                } else if usernameIsValid {
                    fieldInFocus = .password
//                    userNameInFocus = false
//                    passwordInFocus = true
                } else {
                    fieldInFocus = .username
//                    userNameInFocus = true
//                    passwordInFocus = false
                }
            }
            
            Button("Toggle Focus State") {
//                userNameInFocus.toggle()
            }
            
        }
        .padding(40)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                self.userNameInFocus = true
            }
        }
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
