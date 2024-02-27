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

struct ContentView: View {
    @State var router: Router = .homePage
    var body: some View {
        switch router {
        case .homePage:
            HomePageView(router: $router)
        case .receitaUm:
            ReceitaUmView(router: $router)
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
    ContentView()
}
