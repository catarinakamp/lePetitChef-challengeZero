//
//  ReceitaUmView.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 27/02/24.
//

import SwiftUI

struct ReceitaUmView: View {
    var recipe: Recipe
    @Binding var router: Router
    var body: some View {
        
        FirstView(recipe: recipe)
        
    }
}
