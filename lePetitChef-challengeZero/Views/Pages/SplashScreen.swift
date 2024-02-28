//
//  SplashScreen.swift
//  lePetitChef-challengeZero
//
//  Created by Giovana Malaia on 27/02/24.
//
import Foundation
import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    let blueChef = Color(red: 60/255.0, green: 63/255.0, blue: 99/255.0)
    var body: some View {
        if isActive {
            RouterControllerView()
        } else {
            ZStack {
                blueChef
                VStack{
                    VStack{
                        VStack{
                            Spacer()
                            Text("LE").font(.custom("Bubblegum", size: 110)).foregroundStyle(.white)
                            Text("PETIT").font(.custom("Bubblegum", size: 110)).foregroundStyle(.white)
                            Text("CHEF").font(.custom("Bubblegum", size: 110)).foregroundStyle(.white)
                        }.scaleEffect(size)
                            .opacity(opacity)
                            .onAppear{
                                withAnimation(.easeIn(duration: 1)) {
                                    self.size = 0.9
                                    self.opacity = 1.0
                                }
                            }
                        Spacer()
                        Spacer()
                        Image("cabeloRato")
                    }
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                        self.isActive = true
                    }
                }
            }.ignoresSafeArea()
        }
    }
}

#Preview {
    SplashScreen()
}
