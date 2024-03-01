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
        .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2.5)
        
        
        Text ("Clique na tela para continuar")
        .padding(70)
            .foregroundStyle(.lightGrayCustom)
            .font(Font
                .custom("LT Panneaux", size: 20))
            .opacity(textOpacity)
                            .onAppear {withAnimation(.easeIn(duration: 1.0)) {
                                    textOpacity = 1.0}}
        
    }
}

#Preview {
    EstimatedTime(recipe: OurRecipes().arrayOfRecipes[0])
}
