//
//  StepView.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 27/02/24.
//

import SwiftUI

struct StepView: View {
    var step: Steps
    var body: some View {
        VStack {
            
            Spacer(minLength: 40)
                        
            StepsHeader(step: step)
            
            Spacer(minLength: 40)
                        
            ScrollView {
                
                Text(step.description)
                    .font(Font.custom("LT Panneaux", size: 20))
                    .foregroundColor(.black)
                    .frame(width: 291, alignment: .leading)
                
                VideoPreview(step: step)
                
                Text("Próxima etapa")
                    .font(Font.custom("LT Panneaux", size: 16)
                    .weight(.bold))
                    .foregroundStyle(.white)
                    .padding()
                    .frame(width: 181, height: 50)
                    .background(.customPurple)
                    .clipShape(RoundedRectangle(cornerRadius: 40))//Vai virar um botão
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    StepView(step: OurRecipes().arrayOfRecipes[0].steps[0])
}
