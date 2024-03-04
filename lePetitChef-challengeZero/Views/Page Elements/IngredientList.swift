//
//  IngredientList.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 27/02/24.
//

import SwiftUI

struct IngredientList: View {
    @State private var textOpacity: Double = 0.0
    var recipe: Recipe
    var body: some View {
        ScrollView {
            
            Spacer(minLength: 100)
            
            Text("Ingredientes")
                .font(Font
                    .custom("LT Panneaux", size: 24)
                    .weight(.heavy))
                .foregroundColor(.costumBlack)
                .padding()
            
            
            ForEach(recipe.ingredients, id: \.self) { item in
                Text(item)
                    .padding(3)
                    .font(Font
                        .custom("LT Panneaux", size: 20))
                    .foregroundColor(.costumBlack)
                    .frame(width: 300)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

#Preview {
    IngredientList(recipe: OurRecipes().arrayOfRecipes[1])
}
