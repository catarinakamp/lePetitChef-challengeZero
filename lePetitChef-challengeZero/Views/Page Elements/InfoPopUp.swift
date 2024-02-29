//
//  InfoPopUp.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 28/02/24.
//

import SwiftUI

enum Visibility {
    case isVisible
    case notVisible
}

struct InfoPopUp: View {
    
    @Binding var visibility: Visibility
    
    var body: some View {
        
        ZStack {
            
            BlurView(style: .systemUltraThinMaterialDark)
                .ignoresSafeArea()
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.linguineOrange)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                .frame(width: 350, height: 300)
            
            Image("remy-teste")
                .resizable()
                .scaledToFit()
                .position(CGPoint(x: 300, y: 500))
                .frame(height: 400)
            
            VStack {
                
                Spacer()
                
                Text("Bem-vindo ao Le Petit Chef! Nosso app lhe oferece receitas selecionadas pelo chef Remy. Com passo a passo detalhado e vídeos dos movimentos ensinados por Remy, você terá tudo para criar pratos deliciosos. Explore nossa galeria e cozinhe como um verdadeiro chef!"
                )
                .font(Font
                    .custom("LT Panneaux", size: 20))
                .padding()
                .multilineTextAlignment(.center)
                .foregroundStyle(.white)
                
                Button(action: {visibility = .notVisible}, label: {
                    
                    Text("Fechar")
                        .font(Font
                            .custom("LT Panneaux", size: 20))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.white)
                    
                })
                
                Spacer()
            }            .frame(width: 350, height: 600)
        }
    }
}

#Preview {
    InfoPopUp(visibility: .constant(.isVisible))
}
