//
//  NewRecipeView.swift
//  Springroll
//
//  Created by Myon McGee on 2/23/25.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        
        VStack{
            Text("Springroll")
                .font(.largeTitle)
                .bold()
            
            VStack{
                TextField("Recipe Name", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .controlSize(.extraLarge)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.black)
                    .font(.title)
                
                TextField("Time for recipe", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .controlSize(.extraLarge)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.black)
                    .font(.title)
                
                HStack{
                    TextField("Recipe", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .controlSize(.extraLarge)
                        .foregroundStyle(.black)
                        .textFieldStyle(.roundedBorder)
                        .font(.title)
                    
                    TextField("Ingredients", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .controlSize(.extraLarge)
                        .foregroundStyle(.black)
                        .textFieldStyle(.roundedBorder)
                        .font(.title)
                }

            }
            
        }
        
        Spacer()
    }
}

#Preview {
    NewRecipeView()
}
