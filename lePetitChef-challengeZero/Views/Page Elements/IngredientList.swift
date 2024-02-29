//
//  IngredientList.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 27/02/24.
//

import SwiftUI

struct IngredientList: View {
    var recipe: Recipe
    var body: some View {
        VStack {
            
            Spacer(minLength: 100)
            
            Text("Ingredientes")
                .font(Font
                    .custom("LT Panneaux", size: 24)
                    .weight(.heavy))
                .foregroundColor(.black)
                .padding()
            
            ScrollView {
                ForEach(recipe.ingredients, id: \.self) { item in
                    Text(item)
                        .padding(3)
                        .font(Font
                            .custom("LT Panneaux", size: 20))
                        .foregroundColor(.black)
                        .frame(width: 300)
                        .multilineTextAlignment(.center)
                }
            }
            
            Spacer(minLength: 100)
        }
    }
}

#Preview {
    IngredientList(recipe: OurRecipes().arrayOfRecipes[1])
}
