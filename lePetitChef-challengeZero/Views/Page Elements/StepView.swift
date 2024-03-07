//
//  StepView.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 27/02/24.
//

import SwiftUI

struct StepView: View {
    @Binding var router: Router
    var recipe: Recipe
    @State var currentStepIndex: Int = 0
    
    var body: some View {
            ScrollView {
                
                Spacer(minLength: 40)
                
                StepsHeader(currentStepIndex: $currentStepIndex, step: recipe.steps[currentStepIndex], recipe: recipe)
                
                Spacer(minLength: 40)
                
                Text(recipe.steps[currentStepIndex].description)
                    .font(Font.custom("LT Panneaux", size: 20))
                    .foregroundColor(.costumBlack)
                    .frame(width: 291, alignment: .leading)
                
                VideoPreview(step: recipe.steps[currentStepIndex])
                
                Button {
                    if currentStepIndex < recipe.steps.count - 1 {
                        currentStepIndex += 1
                    } else {
                        router = .lastPage
                    }
                } label: {
                    Text("Próxima etapa")
                }.buttonStyle(BlueButtonStyle())
                
                Spacer()
                
            }
    }
}

#Preview {
    StepView(router: .constant(.receitaUm), recipe: OurRecipes().arrayOfRecipes[3], currentStepIndex: 1 )
}
