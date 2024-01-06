//
//  ViewModel.swift
//  SwiftUIStateObjectAndObservedObject
//
//  Created by admin on 1/6/24.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var heroNames: [String] = []
    
    init() {
        getAllHeroNames()
    }
    
    func getAllHeroNames() {
        self.heroNames.append("Thor")
        self.heroNames.append("Ironman")
    }
    
    func addNames(_ name: String) {
        self.heroNames.append(name)
    }
}
