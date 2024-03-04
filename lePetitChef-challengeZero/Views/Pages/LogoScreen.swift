//
//  LogoScreen.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 04/03/24.
//

import SwiftUI

struct LogoScreen: View {
    @State private var opacity: Double = 0.0
    @State private var isActive: Bool = false
    @State private var yposition: Double = -115
    var body: some View {
        if isActive {
            RemyTips()
        }
        else {
            
            ZStack {
                
                Rectangle()
                    .foregroundStyle(.customPurple)
                    .ignoresSafeArea()
                
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeOut(duration: 0.5)) {
                            opacity = 1
                        }
                    }
                
                Rectangle()
                    .foregroundColor(.customPurple)
                    .position(x: 200, y: yposition)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            withAnimation(.easeOut(duration: 0.3)) {
                                yposition = 115
                            }
                        }
                    }

                
                
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.3){
                    self.isActive = true
                }
            }
        }
    }
}


#Preview {
    LogoScreen()
}
