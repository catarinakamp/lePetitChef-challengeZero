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
            
            StepsHeader(step: step)
            
            Spacer(minLength: 30)
            
            Text(step.description)
                .font(Font.custom("LT Panneaux", size: 16))
                .foregroundColor(.black)
                .frame(width: 291, height: 100, alignment: .leading)
            
            VideoPreview()
            
            Spacer()
                        
            Text("Próxima etapa")
                .font(Font.custom("LT Panneaux", size: 16)
                .weight(.bold))
                .foregroundStyle(.white)
                .padding()
                .frame(width: 181, height: 50)
                .background(.customPurple)
                .clipShape(RoundedRectangle(cornerRadius: 40))//Vai virar um botão
            
        }
    }
}

#Preview {
    StepView(step: Steps(numeration: "Nésimo", title: "Lorem ipsum", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "))
}
