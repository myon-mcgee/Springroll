//
//  RecipeView.swift
//  Springroll
//
//  Created by Myon McGee on 2/23/25.
//

import SwiftUI

struct RecipeView: View {
    
    //@State private var ingredients = []
    //@State private var instructions = []
    
    var body: some View {
        
        VStack{
            Text("Springroll")
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
            
            NavigationView {
                List {
                    Section(header: Text("Ingredients").font(.title2)) {
                        /*ForEach(fruits, id: \.self) { item in
                            
                        }*/
                    }
                    
                    Section(header: Text("Instructions").font(.title2)){
                        /*ForEach(fruits, id: \.self) { item in
                            
                        }*/
                    }
                }.listStyle(.plain)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            VStack {
                                Text("Recipe Name")
                                    .font(.title)
                                    .fontWeight(.bold)
                                Text("Time")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
            }
            Spacer()
        }
    }
}

#Preview {
    RecipeView()
}
