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
    case receitaCinco
    case lastPage
}

struct RouterControllerView: View {
    @State var router: Router = .homePage
    var body: some View {
        switch router {
        case .homePage:
            HomePageView(router: $router)
        case .receitaUm:
            FirstView(router: $router, recipe: OurRecipes().arrayOfRecipes[0])
        case .receitaDois:
            FirstView(router: $router, recipe: OurRecipes().arrayOfRecipes[1])
        case .receitaTres:
            FirstView(router: $router, recipe: OurRecipes().arrayOfRecipes[2])
        case .receitaQuatro:
            FirstView(router: $router, recipe: OurRecipes().arrayOfRecipes[3])
        case .receitaCinco:
            FirstView(router: $router, recipe: OurRecipes().arrayOfRecipes[4])
        case .lastPage:
            LastPage(router: $router)
        }
    }
}

#Preview {
    RouterControllerView()
}
