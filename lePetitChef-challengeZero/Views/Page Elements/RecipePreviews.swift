//
//  RecipePreviews.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 27/02/24.
//

import SwiftUI

struct RecipePreviews: View {
    var recipe: Recipe
    var body: some View {
        
        ZStack {
            
            Image(recipe.title)
                .resizable()
                .scaledToFit()
                .frame(width: 310)
                .clipShape(RoundedRectangle(cornerRadius: 40))
            
            RoundedRectangle(cornerRadius: 40)
                .frame(width: 310, height: 200)
                .opacity(0.5)
                .foregroundColor(.black)
                        
            Text(recipe.title)
                .font(Font
                    .custom("LT Panneaux", size: 24))
                .foregroundColor(.white)
            
        }
    }
}

#Preview {
    RecipePreviews(recipe: OurRecipes().arrayOfRecipes[0])
}
