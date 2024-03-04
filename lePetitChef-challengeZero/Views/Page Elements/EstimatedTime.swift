//
//  EstimatedTime.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 27/02/24.
//

import SwiftUI

struct EstimatedTime: View {
    @State private var textOpacity: Double = 0.0
    var recipe: Recipe
    var body: some View {
        
        VStack {
            
            Text("Tempo previsto")
                .font(Font
                    .custom("LT Panneaux", size: 24)
                    .weight(.heavy))
                .foregroundColor(.costumBlack)
                .padding()
            
            Image(systemName: "clock")
                .padding()
                .foregroundStyle(.costumBlack)
            
            Text(recipe.estimatedTime)
                .font(Font
                    .custom("LT Panneaux", size: 20))
                .foregroundColor(.costumBlack)
                        
        }
        .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2.5)
    }
}

#Preview {
    EstimatedTime(recipe: OurRecipes().arrayOfRecipes[0])
}
