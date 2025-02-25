//
//  NewRecipeView.swift
//  Springroll
//
//  Created by Myon McGee on 2/23/25.
//

import SwiftUI

struct NewRecipeView: View {
    
    @State private var recipeName = ""
    @State private var time = ""
    @State private var recipe = ""
    @State private var ingredients = ""
    
    var body: some View {
        VStack{
            TextField("Recipe Name", text: $recipeName)
                .controlSize(.extraLarge)
                .multilineTextAlignment(.center)
                .foregroundStyle(.black)
                .font(.title)
            
            TextField("Time for recipe", text: $time)
                .controlSize(.extraLarge)
                .multilineTextAlignment(.center)
                .foregroundStyle(.black)
                .font(.title2)
            
           /* VStack{
                TextField("Recipe", text: $recipe)
                    .controlSize(.extraLarge)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.black)
                    .textFieldStyle(.roundedBorder)
                    .font(.title)
            }*/
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Recipe")
                        .font(.title)
                        .bold()
                    
                    TextEditor(text: $recipe)
                        .frame(height: 400)
                        .padding(1.0)
                        .background(Color.gray.opacity(0.8))
                        .cornerRadius(10)
                        .font(.body)
                }
                .padding(.top, 50.0)
                .padding(.horizontal, 15.0)
                
                VStack(alignment: .leading){
                    Text("Ingredients")
                        .font(.title)
                        .bold()
                    
                    TextEditor(text: $recipe)
                        .frame(height: 400)
                        .padding(1.0)
                        .background(Color.gray.opacity(0.8))
                        .cornerRadius(10)
                        .font(.body)
                }
                .padding(.top)
                .padding(.horizontal, 15.0)
            }
            
        }
        
        Spacer()
    }
}

#Preview {
    NewRecipeView()
}
