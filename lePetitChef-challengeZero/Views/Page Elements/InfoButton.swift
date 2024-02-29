//
//  InfoButton.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 28/02/24.
//

import SwiftUI

enum Visibility {
    case isVisible
    case notVisible
}

struct PopUp: View {
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}

struct InfoButton: View {
    @State var visibility: Visibility = .notVisible
    var body: some View {
        
        ZStack {
            
            Button(action: {visibility = .isVisible}, label: {
                Image(systemName: "info.circle")
                    .foregroundColor(.black)
            })
            
            if visibility == .isVisible {
                
                ZStack{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .padding()
                        .opacity(0.55)
                    VStack {
                        Text("")
                        Spacer()
                        Button(action: {visibility = .notVisible}, label: {
                            Text("Close")
                        })
                    }
                }
            }
        }
    }
}


#Preview {
    InfoButton()
}
