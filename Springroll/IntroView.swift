//
//  ContentView.swift
//  Springroll
//
//  Created by Myon McGee on 2/19/25.
//

import SwiftUI
import SwiftData

struct IntroView: View {
    
    var body: some View {
        VStack(){
            Image("Logo")
                .scaledToFit()
            Text("Springroll")
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                .bold()
        }
    }
}

#Preview {
    IntroView()
        .modelContainer(for: Item.self, inMemory: true)
}
