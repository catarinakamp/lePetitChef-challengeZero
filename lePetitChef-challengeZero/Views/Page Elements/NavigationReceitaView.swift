//
//  NavigationReceitaView.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 28/02/24.
//

import SwiftUI

struct FirstView: View {
    @Binding var router: Router
    var recipe: Recipe
    var body: some View {
        NavigationView(content: { NavigationLink(destination:
                                        
            SecondView(recipe: recipe)
                                        
        ) { VStack {
            
            Button(action: {
                    
                    router = .homePage
                    
                }, label: {
                    
                    Text("Página inicial")
                    
                })
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
