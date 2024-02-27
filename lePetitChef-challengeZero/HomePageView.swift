//
//  HomePageView.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 27/02/24.
//

import SwiftUI

struct HomePageView: View {
    @Binding var router: Router
    var body: some View {
        VStack{
            HStack{
                Text("Bonjour,\nLinguine!\nExplore receitas").font(.custom("LT Panneaux Extra Bold",size: 40))
                Image(systemName: "info")
            }
            ScrollView{
                Button(action: {router = .receitaUm}, label: {
                    Rectangle().cornerRadius(20)
                        .padding().frame(width:300,height: 200)
                })
                Button(action: {router = .receitaDois}, label: {
                    Rectangle().cornerRadius(20)
                        .padding().frame(width:300,height: 200)
                })
                Button(action: {router = .receitaTres}, label: {
                    Rectangle().cornerRadius(20)
                        .padding().frame(width:300,height: 200)
                })
                Button(action: {router = .receitaQuatro}, label: {
                    Rectangle().cornerRadius(20)
                        .padding().frame(width:300,height: 200)
                })
            }
        }
    }
}

