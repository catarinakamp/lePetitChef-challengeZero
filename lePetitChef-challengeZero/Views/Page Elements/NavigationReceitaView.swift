//
//  NavigationReceitaView.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 28/02/24.
//

import SwiftUI

struct FirstView: View {
    var recipe: Recipe
    var body: some View {
        NavigationView(content: { NavigationLink(destination:
                                        
            SecondView(recipe: recipe)
                                        
        ) { VStack {
            
            Spacer()
            EstimatedTime(recipe: recipe)
            Spacer()
            
        }
        }
        })
    }
}

struct SecondView: View {
    var recipe: Recipe
    var body: some View {
        NavigationLink(destination:
                        
            ThirdView(recipe: recipe)
                       
        ) { VStack {
            
            Spacer()
            IngredientList(recipe: recipe)
            Spacer()
            
        }
        }
    }
}


struct ThirdView: View {
    var recipe: Recipe
    var body: some View {
        
        Spacer()
        StepView(step: recipe.steps[0])
        Spacer()
        
    }
}

#Preview {
    FirstView(recipe: Recipe(title: "Ratatouille", estimatedTime: "120 minutos", ingredients: ["Cenoura","Batata","Pepino"], steps: [Steps(numeration: "Primeiro", title: "Corta", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", nomeArquivo: ""), Steps(numeration: "Segundo", title: "Liquidificador", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", nomeArquivo: ""), Steps(numeration: "Terceiro", title: "Cozinhar", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", nomeArquivo: ""), Steps(numeration: "Quarto", title: "Fritar", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", nomeArquivo: "")]))
}
