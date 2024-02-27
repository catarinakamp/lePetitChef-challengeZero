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
            Spacer()
            Spacer()
            Spacer()
            HStack{
                VStack(alignment: .leading, spacing:-3){
                    Text("lalalal,").font(.custom("LT Panneaux Extra Bold",size: 32))
                    HStack{
                        Text("Linguine").font(.custom("LT Panneaux Extra Bold",size: 32)).foregroundStyle(.linguineOrange)
                        Text("!").font(.custom("LT Panneaux Extra Bold",size: 32))
                    }
                    Text("Explore receitas").font(.custom("LT Panneaux Extra Bold",size: 32))
                    
                }
                Image(systemName: "info.circle")
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

