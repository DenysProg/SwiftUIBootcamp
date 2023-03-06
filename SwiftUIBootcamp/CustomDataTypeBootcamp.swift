//
//  CustomDataTypeBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 03.03.2023.
//

import SwiftUI

struct UserModel: Identifiable {
    var id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct CustomDataTypeBootcamp: View {
    @State var users: [UserModel] = [UserModel(displayName: "Denys Nik", userName: "Denys123", followerCount: 100000, isVerified: true),
                                     UserModel(displayName: "Emily", userName: "Emily3333", followerCount: 1000, isVerified: false),
                                     UserModel(displayName: "Samanta", userName: "Samantassxsx", followerCount: 2000, isVerified: true),
                                     UserModel(displayName: "Cris", userName: "Cris2001", followerCount: 3000, isVerified: false),
                                     UserModel(displayName: "Denys", userName: "Wow", followerCount: 10, isVerified: true)]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Folowers")
                                .foregroundColor(.gray)
                                .font(.headline)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Users")
        }
    }
}

struct CustomDataTypeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        CustomDataTypeBootcamp()
    }
}
