//
//  ToggleBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 16.02.2023.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status: ")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(isOn: $toggleIsOn) {
                Text("Change status")
            }
            .toggleStyle(SwitchToggleStyle(tint: .blue))
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
