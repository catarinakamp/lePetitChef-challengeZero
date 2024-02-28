//
//  EstimatedTime.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 27/02/24.
//

import SwiftUI

struct EstimatedTime: View {
    var recipe: Recipe
    var body: some View {
        
        Text("Tempo previsto")
            .font(Font
                .custom("LT Panneaux", size: 24)
                .weight(.heavy))
            .foregroundColor(.black)
            .padding()//diminuir espaço
        
        Image(systemName: "clock")
            .padding()
            .foregroundStyle(.black)
        
        Text(recipe.estimatedTime)
            .font(Font
                .custom("LT Panneaux", size: 20))
            .foregroundColor(.black)
        
    }
}

#Preview {
    EstimatedTime(recipe: Recipe(title: "", estimatedTime: "120 minutos", ingredients: [""], steps: [Steps(numeration: "", title: "", description: "", nomeArquivo: "")]))
}
