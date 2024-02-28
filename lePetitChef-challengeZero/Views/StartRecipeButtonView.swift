//
//  StartRecipeButton.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 27/02/24.
//

import SwiftUI

struct StartRecipeButton: View {

    // Define an action to be performed when the button is tapped
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text("Start Recipe") // Replace with your desired button label content
                .foregroundColor(.white) // Example color customization
                .font(.headline) // Example font customization
                .frame(minWidth: 150, minHeight: 50) // Adjust dimensions as needed
                .padding() // Add padding for aesthetics
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.blue) // Example background color customization
                )
        }
    }
}

struct StartRecipeButtonView: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
        }.buttonStyle(StartRecipeButton)
        )
    }
}

#Preview {
    StartRecipeButtonView()
}
