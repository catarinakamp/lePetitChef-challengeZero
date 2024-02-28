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
            ReceitaUmView(recipe: Recipe(title: "Ratatouille", estimatedTime: "120 minutos", ingredients: ["Cenoura","Batata","Pepino"], steps: [Steps(numeration: "Primeiro", title: "Corta", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", nomeArquivo: ""), Steps(numeration: "Segundo", title: "Liquidificador", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", nomeArquivo: ""), Steps(numeration: "Terceiro", title: "Cozinhar", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", nomeArquivo: ""), Steps(numeration: "Quarto", title: "Fritar", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", nomeArquivo: "")]), router: $router)
        case .receitaDois:
            ReceitaDoisView(router: $router)
        case .receitaTres:
            ReceitaTresView(router: $router)
        case .receitaQuatro:
            ReceitaQuatroView(router: $router)
        }
    }
}

#Preview {
    RouterControllerView()
}
