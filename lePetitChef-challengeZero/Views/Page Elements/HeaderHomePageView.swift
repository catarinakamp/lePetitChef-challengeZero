//
//  HeaderHomePageView.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 27/02/24.
//

import SwiftUI

struct HeaderHomePageView: View {
    @State var visibility: Visibility
    var body: some View {
        
        HStack{
            
            VStack (alignment: .leading, spacing: -2) {
                
                Text("Bonjour")
                    .font(Font
                        .custom("LT Panneaux", size: 32)
                        .weight(.heavy))
                    .foregroundColor(.black)
                
                HStack{
                    
                    Text("Linguine").font(Font
                        .custom("LT Panneaux", size: 32)
                        .weight(.heavy))
                    .foregroundColor(.linguineOrange)
                    
                    Text("!").font(Font
                        .custom("LT Panneaux", size: 32)
                        .weight(.heavy))
                    .foregroundColor(.black)
                    
                }
                
                Text("Explore receitas").font(Font
                    .custom("LT Panneaux", size: 32)
                    .weight(.heavy))
                .foregroundColor(.black)
                
            }
            
            Button(action: {
                visibility = .isVisible
            }, label: {
                Image(systemName: "info.circle")
                    .foregroundStyle(.black)
                
            })
        }
    }
}

#Preview {
    HeaderHomePageView(visibility: .notVisible)
}
