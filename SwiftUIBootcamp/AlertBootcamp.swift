//
//  AlertBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 13.02.2023.
//

import SwiftUI

struct AlertBootcamp: View {
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea(.all)
            
            VStack {
                Button("Button 1") {
                    alertType = .error
//                    alertTitle = "ERROR UPLOADING VIDEO"
//                    alertMessage = "The video could not be uploaded"
                    self.showAlert.toggle()
                }
                
                Button("Button 2") {
                    alertType = .success
//                    alertTitle = "SUCCESSFULLY UPLOADED VIDEO  👍"
//                    alertMessage = "Your video is now public!"
                    self.showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert) {                //            Alert(title: Text("There was an error!"), message: Text("Lol you are LOx"), dismissButton: .cancel())
               getAlert()
            }
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .none:
            return Alert(title: Text("ERROR"))
        case .error:
            return Alert(title: Text("There was an error!"), message: nil, dismissButton: .default(Text("OK"), action: {
                backgroundColor = .red
            }))
        case .success:
            return Alert(title: Text("SUCCESS"), message: nil, dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        }
        
//        return  Alert(
//            title: Text(alertTitle), //"There was an error!"
//            message: Text(alertMessage), //Lol you are LOx
//            primaryButton: .default(Text("Soso4ek"), action: {
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel(Text("Fuck off")))
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
