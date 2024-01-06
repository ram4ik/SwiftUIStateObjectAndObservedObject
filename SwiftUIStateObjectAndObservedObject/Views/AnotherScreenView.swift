//
//  AnotherScreenView.swift
//  SwiftUIStateObjectAndObservedObject
//
//  Created by admin on 1/6/24.
//

import SwiftUI

struct AnotherScreenView: View {
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        Text("Favorite Screen")
    }
}
