//
//  RemyTips.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 04/03/24.
//

import SwiftUI

struct RemyTips: View {
    
    @State private var opacity: Double = 0
    @State private var isActive: Bool = false
    @State private var text = ""
    
    let remyTips: [String] = [    "A harmonia perfeita de temperos é a sinfonia do prato.",    "A verdadeira magia está na simplicidade dos ingredientes.",    "Não tenha medo de experimentar novas combinações de sabores.",    "Cozinhar com amor é o segredo para encantar qualquer paladar.",    "Um toque de frescor pode transformar até mesmo o prato mais simples.",    "A precisão na medida dos ingredientes é a base de toda receita.",    "A paciência na cozinha é uma virtude que sempre vale a pena cultivar.",    "Não se trata apenas de cozinhar, mas de contar uma história com cada prato.",    "Lembre-se: a apresentação é o primeiro passo para conquistar o apetite.",    "A improvisação na cozinha pode levar a descobertas surpreendentes.",    "O segredo de um bom molho está na sua redução.",    "Cada ingrediente tem uma voz; cabe a nós ouvi-los e combiná-los em harmonia.",    "Na cozinha, assim como na vida, é importante encontrar o equilíbrio certo.",    "Aprecie cada momento na cozinha; é onde a magia acontece.",    "Nunca subestime o poder de um simples gesto de gentileza na cozinha."]

    
    var body: some View {
        
        if isActive {
            
            RouterControllerView()
            
        }
        
        else {
            
            ZStack {
                
                Rectangle()
                    .foregroundStyle(.customPurple)
                    .ignoresSafeArea()
                    
                VStack {
                    
                    Spacer(minLength: 300)
                    
                    Text(text)
                            .frame(width: 280, alignment: .center)
                            .font(Font
                                .custom("LT Panneaux", size: 28))
                            .opacity(0.6)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)

                    GeometryReader { geometry in
                        let imageSize = CGSize(width: geometry.size.width/1, height: geometry.size.height/1)
                        let imagePosition = CGPoint(x: geometry.size.width - imageSize.width / 2, y: geometry.size.height - imageSize.height / 7)

                        Image("cabeloRato")
                            .resizable()
                            .scaledToFit()
                            .frame(width: imageSize.width, height: imageSize.height)
                            .position(imagePosition)
                    }
                        
                }
                .opacity(opacity)
                .onAppear {
                    text = remyTips.randomElement()!
                }
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        opacity = 1
                    }
                }
                
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    isActive = true
                                }
            }
        }
    }
}

#Preview {
    RemyTips()
}
