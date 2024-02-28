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
            
            Rectangle()
                .foregroundStyle(.black)
                .cornerRadius(20)
                .padding()
                .frame(width:300,height: 200)
            
            Text(recipe.title)
                .font(Font
                    .custom("LT Panneaux", size: 24)
                    .weight(.heavy))
                .foregroundColor(.white)
            
        }
    }
}

#Preview {
    RecipePreviews(recipe: Recipe(title: "Ratatouile", estimatedTime: "", ingredients: [""], steps: [Steps(numeration: "", title: "", description: "", nomeArquivo: "")]))
}
