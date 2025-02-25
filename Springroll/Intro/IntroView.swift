//
//  ContentView.swift
//  Springroll
//
//  Created by Myon McGee on 2/19/25.
//

import SwiftUI
import SwiftData

struct IntroView: View {
    
    @StateObject private var viewModel = IntroViewModel() // Use ViewModel
    
    var body: some View {
        ZStack(){
            VStack(){
                Image("Logo")
                    .scaledToFit()
                Text("Springroll")
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .bold()
            }.opacity(viewModel.showHome ? 0 : 1)
        }.fullScreenCover(isPresented: $viewModel.showHome) {
            HomeView() // Navigate to HomeView when showHome = true
        }
    }
}

#Preview {
    IntroView()
}
