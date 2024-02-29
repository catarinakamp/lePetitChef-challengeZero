//
//  LastPage.swift
//  lePetitChef-challengeZero
//
//  Created by Giovana Malaia on 29/02/24.
//

import Foundation
import SwiftUI

struct LastPage: View {
    @Binding var router: Router
    var body: some View {
        ZStack{
            Color(.linguineOrange)
                .ignoresSafeArea()
            VStack {
                Text("""
                 Você concluiu a sua receita!
                 Volte à galeria e teste as outras receitas que Remy separou para você!
                 """)
                .foregroundStyle(.white)
                .font(Font
                    .custom("LT Panneaux", size: 40))
                .fontWeight(.heavy)
                .frame(width: 300)
                .multilineTextAlignment(.center)
                
                Button {
                    router = .homePage
                } label: {
                    Text("Retornar")
                        .padding(EdgeInsets(top: 7, leading: 28, bottom: 7, trailing: 28))
                        .font(Font.custom("LT Panneaux", size: 16)
                        .weight(.bold))
                        .foregroundStyle(.linguineOrange)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 40))
                }
            }
        }
    }
}

