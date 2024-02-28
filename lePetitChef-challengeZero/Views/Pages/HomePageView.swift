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
            
            HeaderHomePageView()
            
            }
        
            ScrollView{
                
                Button(action: {router = .receitaUm}, label: {
                    RecipePreviews(recipe: Recipe(title: "Ratatouile", estimatedTime: "", ingredients: [""], steps: [Steps(numeration: "", title: "", description: "")]))
                })
                
                Button(action: {router = .receitaDois}, label: {
                    RecipePreviews(recipe: Recipe(title: "Sopa", estimatedTime: "", ingredients: [""], steps: [Steps(numeration: "", title: "", description: "")]))
                })
                
                Button(action: {router = .receitaTres}, label: {
                    RecipePreviews(recipe: Recipe(title: "Torta", estimatedTime: "", ingredients: [""], steps: [Steps(numeration: "", title: "", description: "")]))
                })
                
                Button(action: {router = .receitaQuatro}, label: {
                    RecipePreviews(recipe: Recipe(title: "Blablabla", estimatedTime: "", ingredients: [""], steps: [Steps(numeration: "", title: "", description: "")]))
                })
                
            }
        }
    }


