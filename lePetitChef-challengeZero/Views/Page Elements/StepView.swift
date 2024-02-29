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
    @State private var currentStepIndex: Int = 0
    
    var body: some View {
        VStack {
            
            Spacer(minLength: 40)
                        
            StepsHeader(step: recipe.steps[currentStepIndex])
            
            Spacer(minLength: 40)
                        
            ScrollView {
                
                Text(recipe.steps[currentStepIndex].description)
                    .font(Font.custom("LT Panneaux", size: 20))
                    .foregroundColor(.black)
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
                        .font(Font.custom("LT Panneaux", size: 16)
                        .weight(.bold))
                        .foregroundStyle(.white)
                        .padding()
                        .frame(width: 181, height: 50)
                        .background(.customPurple)
                        .clipShape(RoundedRectangle(cornerRadius: 40))
                }

                Spacer()
                
            }
        }
    }
}
