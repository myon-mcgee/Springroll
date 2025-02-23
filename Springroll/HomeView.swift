//
//  HomeView.swift
//  Springroll
//
//  Created by Myon McGee on 2/22/25.
//

import SwiftUI

struct HomeView: View {
    
    @State var searchText = ""
    var body: some View {
        VStack {
            
            Text("SpringRoll")
                .font(.largeTitle)
                .bold()
            
            HStack{
                Spacer()
                Button {
                    print("Button Tapped")
                } label: {
                    Image(systemName: "ellipsis")
                        .font(.title3)
                        .foregroundColor(Color.black)
                }.padding(.trailing)
            }.padding(.bottom)
                     
            //List UI
            NavigationView {
                List{
                    
                }.searchable(text: $searchText, prompt: "Search Recipes")
                    .navigationTitle("Recipes")
            }
        }
    }
}

#Preview {
    HomeView()
}
