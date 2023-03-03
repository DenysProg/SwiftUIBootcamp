//
//  DocumentationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 01.03.2023.
//

import SwiftUI

struct DocumentationBootcamp: View {
    // MARK: Properties
    @State var data: [String] = ["Apples", "Orange", "Bananas"]
    @State var showAlert: Bool = false
    
    // MARK: Body
    
    // Denys - Worcking copy - things to do:
    /*
     Working copy -things to do
     1) Fix title
     2) Fix alert
     3)
     */
    
    var body: some View {
        NavigationView {
           
            foregraundLayer
            .navigationTitle("Documentation")
            .navigationBarItems(trailing: Button("Alert", action: {
                showAlert.toggle()
            }))
            .alert(isPresented: $showAlert) {
                getAlert(text: "This is the alert!")
            }
        }
    }
    
    /// This is the foregraund Layer thats holds scroll view
    private var foregraundLayer: some View {
        ScrollView {
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        }
    }
    
    // MARK: Functions
    
    
    /// Description
    /// - Parameter text: text description
    /// - Returns: description
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}
// MARK: Preview
struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
