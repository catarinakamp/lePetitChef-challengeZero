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
    StepsHeader(step: Steps(numeration: "Primeiro", title: "Cortar legumes", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",nomeArquivo: ""))
}
