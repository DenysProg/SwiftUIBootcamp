//
//  OnSubmitBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 06.03.2023.
//

import SwiftUI

struct OnSubmitBootcamp: View {
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            TextField("Plaseholder...", text: $text)
                .submitLabel(.route)
                .onSubmit {
                    print("Cancel")
            }
            
            TextField("Plaseholder...", text: $text)
                .submitLabel(.next)
                .onSubmit {
                    print("Cancel")
            }
            
            TextField("Plaseholder...", text: $text)
                .submitLabel(.search)
                .onSubmit {
                    print("Cancel")
            }
        }
    }
}

struct OnSubmitBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnSubmitBootcamp()
    }
}
