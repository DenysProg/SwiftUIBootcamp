//
//  EnviromentObjectBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Denys Nikolaichuk on 06.03.2023.
//

import SwiftUI

class EnviromentViewModel: ObservableObject {
    @Published var dateArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dateArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}

struct EnviromentObjectBootcamp: View {
    @StateObject var viewModel: EnviromentViewModel = EnviromentViewModel()
    
    var body: some View {
        NavigationView() {
            List {
                ForEach(viewModel.dateArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                    }
                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    let selectedItem: String
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(30)
            }
        }
    }
}

struct FinalView: View {
    @EnvironmentObject var viewModel: EnviromentViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.purple, .gray]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dateArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnviromentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentObjectBootcamp()
//        Detail(selectedItem: "iPhone")
//        FinalView()
    }
}
