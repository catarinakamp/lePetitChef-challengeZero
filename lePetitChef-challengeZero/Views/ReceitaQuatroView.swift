//
//  ReceitaQuatroView.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 27/02/24.
//

import SwiftUI

struct ReceitaQuatroView: View {
    @Binding var router: Router
    var body: some View {
        Text("4").font(.largeTitle)
        Button(action: {
            router = .homePage
        }, label: {
            Text("homePage")
        })
    }
}
