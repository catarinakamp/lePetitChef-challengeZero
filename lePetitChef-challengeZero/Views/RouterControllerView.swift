//
//  ContentView.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 27/02/24.
//

import SwiftUI

enum Router{
    case homePage
    case receitaUm
    case receitaDois
    case receitaTres
    case receitaQuatro
}

struct RouterControllerView: View {
    @State var router: Router = .homePage
    var body: some View {
        switch router {
        case .homePage:
            HomePageView(router: $router)
        case .receitaUm:
            FullRecipeView(recipe: OurRecipes().arrayOfRecipes[0], router: $router)
        case .receitaDois:
            FullRecipeView(recipe: OurRecipes().arrayOfRecipes[1], router: $router)
        case .receitaTres:
            FullRecipeView(recipe: OurRecipes().arrayOfRecipes[2], router: $router)
        case .receitaQuatro:
            FullRecipeView(recipe: OurRecipes().arrayOfRecipes[3], router: $router)
        }
    }
}

#Preview {
    RouterControllerView()
}
