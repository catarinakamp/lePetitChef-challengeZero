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
            
            Text("Ingredientes")
                .font(Font
                    .custom("LT Panneaux", size: 24)
                    .weight(.heavy))
                .foregroundColor(.black)
                .padding()
            
            ForEach(recipe.ingredients, id: \.self) { item in
                Text(item)
                    .font(Font
                        .custom("LT Panneaux", size: 24))
                    .foregroundColor(.black)
                  }
            
        }
    }
}

#Preview {
    IngredientList(recipe: OurRecipes().arrayOfRecipes[0])
}
