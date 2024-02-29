//
//  HomePageView.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 27/02/24.
//

import SwiftUI

struct HomePageView: View {
    @Binding var router: Router
    @State var visibility: Visibility = .notVisible
    var body: some View {
        ZStack {
            VStack{
                
                //HeaderHomePageView(), precisei colar tudo aqui provisóriamente porque o botão não funcionada de outra forma
                
                HStack { //HeaderHomePageView()
                    
                    VStack (alignment: .leading, spacing: -2) { //HeaderHomePageView()
                        
                        Text("Bonjour,") //HeaderHomePageView()
                            .font(Font //HeaderHomePageView()
                                .custom("LT Panneaux", size: 32) //HeaderHomePageView()
                                .weight(.heavy)) //HeaderHomePageView()
                            .foregroundColor(.black) //HeaderHomePageView()
                        
                        HStack{ //HeaderHomePageView()
                            
                            Text("Linguine").font(Font //HeaderHomePageView()
                                .custom("LT Panneaux", size: 32)
                                .weight(.heavy)) //HeaderHomePageView()
                            .foregroundColor(.linguineOrange) //HeaderHomePageView()
                            
                            Text("!").font(Font //HeaderHomePageView()
                                .custom("LT Panneaux", size: 32) //HeaderHomePageView()
                                .weight(.heavy)) //HeaderHomePageView()
                            .foregroundColor(.black) //HeaderHomePageView()
                            
                        }
                        
                        Text("Explore receitas").font(Font //HeaderHomePageView()
                            .custom("LT Panneaux", size: 32) //HeaderHomePageView()
                            .weight(.heavy)) //HeaderHomePageView()
                        .foregroundColor(.black) //HeaderHomePageView()
                        
                    } //HeaderHomePageView()
                    
                    Button(action: { //HeaderHomePageView()
                        visibility = .isVisible //HeaderHomePageView()
                    }, label: { //HeaderHomePageView()
                        Image(systemName: "info.circle") //HeaderHomePageView()
                            .foregroundStyle(.black) //HeaderHomePageView()
                        
                    }) //HeaderHomePageView()
                } //HeaderHomePageView()
                
                //HeaderHomePageView()
                
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
            
            if visibility == .isVisible {
                
                //InfoPopUp(), precisei colar tudo aqui provisóriamente porque o botão não funcionada de outra forma
                
                ZStack{ //InfoPopUp()
                    
                    BlurView(style: .systemUltraThinMaterial)
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/) //InfoPopUp()
                            .foregroundColor(.linguineOrange) //InfoPopUp()
                            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/) //InfoPopUp()
                        
                        VStack { //InfoPopUp()
                            
                            Spacer() //InfoPopUp()
                            
                            Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?") //InfoPopUp()
                                .foregroundStyle(.white)
                                .font(Font //InfoPopUp()
                                    .custom("LT Panneaux", size: 20)) //InfoPopUp()
                                .padding()
                                .frame(width: 330, alignment: .center)//InfoPopUp()
                            
                            Button(action: {visibility = .notVisible}, label: { //InfoPopUp()
                                
                                Text("Fechar") //InfoPopUp()
                                    .foregroundStyle(.white) //InfoPopUp()
                                
                            }) //InfoPopUp()
                            
                            Spacer()//InfoPopUp()
                            
                        } //InfoPopUp()
                        
                    }
                    .frame(width: 350, height: 600)//InfoPopUp()
                }
                .ignoresSafeArea()
                
                //InfoPopUp(), precisei colar tudo aqui provisóriamente porque o botão não funcionada de outra forma
                
                
            }
            
        }
    }
}


