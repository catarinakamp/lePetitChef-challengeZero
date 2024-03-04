//
//  HeaderHomePageView.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 27/02/24.
//

import SwiftUI

struct HeaderHomePageView: View {
    @Binding var visibility: Visibility
    
    var body: some View {
        
        HStack (alignment: .top){
            
            VStack (alignment: .leading, spacing: -2) {
                
                HStack{
                    
                    Text("Bonjour")
                        .font(Font
                            .custom("LT Panneaux", size: 32)
                            .weight(.heavy))
                        .foregroundColor(.costumBlack)
                    
                    Text("Linguine").font(Font
                        .custom("LT Panneaux", size: 32)
                        .weight(.heavy))
                    .foregroundColor(.linguineOrange)
                    
                    Text("!").font(Font
                        .custom("LT Panneaux", size: 32)
                        .weight(.heavy))
                    .foregroundColor(.costumBlack)
                    
                }
                
                Text("Explore receitas").font(Font
                    .custom("LT Panneaux", size: 28))
                .foregroundColor(.costumBlack)
                
            }
            
            Button(action: {
                visibility = .isVisible
            }, label: {
                Image(systemName: "info.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20)
                    .foregroundStyle(.costumBlack)
                    .padding(.top, 11)
                    .padding(.leading, 30)
                
            })
        }
    }
}

#Preview {
    HeaderHomePageView(visibility: .constant(.isVisible))
}
