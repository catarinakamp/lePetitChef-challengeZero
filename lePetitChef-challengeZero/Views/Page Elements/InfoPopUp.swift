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
            
            ZStack{
                
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.linguineOrange)
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                
                VStack {
                    
                    Spacer()
                    
                    Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?")
                        .font(Font
                            .custom("LT Panneaux", size: 20))
                        .padding()
                    
                    Button(action: {visibility = .notVisible}, label: {
                        
                        Text("Fechar")
                            .foregroundStyle(.white)
                        
                    })
                    
                    Spacer()
                    
                }
                
            }
            .frame(width: 350, height: 600)
            
        }
        
    }
}

#Preview {
    InfoPopUp(visibility: .constant(.isVisible))
}
