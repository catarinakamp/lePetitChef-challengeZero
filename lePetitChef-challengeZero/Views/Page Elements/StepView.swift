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
            
            Text(step.description)
                .font(Font.custom("LT Panneaux", size: 16))
                .foregroundColor(.black)
                .frame(width: 291, height: 100, alignment: .leading)
            
            VideoPreview()
            
            Text("Próxima etapa")
                .padding()
                .background(.gray)
                .clipShape(RoundedRectangle(cornerRadius: 25))
            
        }
    }
}

#Preview {
    StepView(step: Steps(numeration: "Nésimo", title: "Lorem ipsum", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "))
}
