//
//  NavigationReceitaView.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 28/02/24.
//

import SwiftUI

struct FirstView: View {
    @Binding var router: Router
    var recipe: Recipe
    var body: some View {
            NavigationView {
                
                VStack {
                    
                    EstimatedTime(recipe: recipe)
                    
                    NavigationLink(
                        destination: SecondView(router: $router, recipe: recipe),
                        label: {
                            Text("Ver ingredientes")
                                .font(Font.custom("LT Panneaux", size: 16)
                                .weight(.bold))
                                .foregroundStyle(.white)
                                .padding()
                                .frame(width: 181, height: 50)
                                .background(.colorButton)
                                .clipShape(RoundedRectangle(cornerRadius: 40))
                        }
                    )
                    .navigationBarTitle("", displayMode: .inline)
                    .navigationBarItems(
                        leading:
                            Button(action: {
                                router = .homePage
                            }) {
                                HStack {
                                    Image(systemName: "chevron.backward")
                                    Text("Back")
                                }
                            }
                    )

                }
            }
    }
}


struct SecondView: View {
    @Binding var router: Router
    var recipe: Recipe
    var body: some View {
        
        IngredientList(recipe: recipe)
        
        NavigationLink(destination:
                        
                        StepView(router: $router,recipe: recipe)
                       
        ) {
            Text("Começar")
                .font(Font.custom("LT Panneaux", size: 16)
                .weight(.bold))
                .foregroundStyle(.white)
                .padding()
                .frame(width: 181, height: 50)
                .background(.colorButton)
                .clipShape(RoundedRectangle(cornerRadius: 40))
        }
    }
}
