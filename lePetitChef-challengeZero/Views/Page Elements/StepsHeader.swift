//
//  StepsHeader.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 27/02/24.
//

import SwiftUI

struct StepsHeader: View {
    @Binding var currentStepIndex: Int
    var step: Steps
    var recipe: Recipe
    var body: some View {
        Text("Passo \(currentStepIndex + 1) de \(recipe.steps.count)")
            .font(Font
                .custom("LT Panneaux", size: 24)
                .weight(
                    .heavy))
            .foregroundColor(.costumBlack)
            .frame(width: 287, alignment: .leading) //conferir se é bom colocar width
        
        Text(step.title)
            .font(Font
                .custom("LT Panneaux", size: 20)
                .weight(
                    .bold))
            .foregroundColor(.costumBlack)
            .frame(width: 287, alignment: .leading)//conferir se é bom colocar width
        
    }
}

#Preview {
    StepsHeader(currentStepIndex: .constant(0), step: OurRecipes().arrayOfRecipes[0].steps[0], recipe: OurRecipes().arrayOfRecipes[0])
}
