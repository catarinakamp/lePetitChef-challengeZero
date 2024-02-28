//
//  StepsHeader.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 27/02/24.
//

import SwiftUI

struct StepsHeader: View {
    var step: Steps
    var body: some View {
        Text("\(step.numeration) passo")
            .font(Font
                .custom("LT Panneaux", size: 24)
                .weight(
                    .heavy))
            .foregroundColor(.black)
            .frame(width: 287, alignment: .leading) //conferir se é bom colocar width
        
        Text(step.title)
            .font(Font
                .custom("LT Panneaux", size: 20)
                .weight(
                    .bold))
            .foregroundColor(.black)
            .frame(width: 287, alignment: .leading)//conferir se é bom colocar width
        
    }
}

#Preview {
    StepsHeader(step: OurRecipes().arrayOfRecipes[0].steps[0])
}
