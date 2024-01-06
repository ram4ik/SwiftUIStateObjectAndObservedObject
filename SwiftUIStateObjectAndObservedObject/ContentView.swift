//
//  ContentView.swift
//  SwiftUIStateObjectAndObservedObject
//
//  Created by admin on 1/6/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel: ViewModel = ViewModel()
    @State var path: [String] = []
    
    var body: some View {
        NavigationStack(path: $path) {
            List(viewModel.heroNames, id: \.self) { heroName in
                Text(heroName)
                
            }
            .navigationTitle("Marvel Heroes")
            .toolbar(content: {
                Button(action: {
                    viewModel.addNames("Captan America")
                }, label: {
                    Image(systemName: "plus")
                })
            })
            .toolbar(content: {
                Button(action: {
                    path.append("Favorite Screen")
                }, label: {
                    Image(systemName: "heart")
                })
            })
            .navigationDestination(for: String.self) { _ in
                AnotherScreenView(viewModel: viewModel)
            }
        }
    }
}

#Preview {
    ContentView()
}
