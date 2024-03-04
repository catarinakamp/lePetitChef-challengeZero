//
//  ButtonStyle.swift
//  lePetitChef-challengeZero
//
//  Created by Giovana Malaia on 01/03/24.
//

import Foundation
import SwiftUI

struct BlueButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(Font.custom("LT Panneaux", size: 16)
            .weight(.bold))
            .foregroundStyle(.white)
            .padding()
            .frame(width: 181, height: 50)
            .background(.colorButton)
            .clipShape(RoundedRectangle(cornerRadius: 40))
    }
}
