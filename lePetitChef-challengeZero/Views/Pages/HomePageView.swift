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
                    RecipePreviews(recipe: OurRecipes().arrayOfRecipes[0])
                })
                
                Button(action: {router = .receitaDois}, label: {
                    RecipePreviews(recipe: OurRecipes().arrayOfRecipes[1])
                })
                
                Button(action: {router = .receitaTres}, label: {
                    RecipePreviews(recipe: OurRecipes().arrayOfRecipes[2])
                })
                
                Button(action: {router = .receitaQuatro}, label: {
                    RecipePreviews(recipe: OurRecipes().arrayOfRecipes[3])
                })
                
            }
        }
    }


