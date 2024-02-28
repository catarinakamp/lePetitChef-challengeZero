//
//  VideoPreview.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 27/02/24.
//

import SwiftUI

//Editar quando descobrir como colocar vídeo e adicionar infromação à struct

struct VideoPreview: View {
    var body: some View {
        ZStack{
            
            Rectangle()
                .foregroundStyle(.gray)
                .cornerRadius(20)
                .padding()
                .frame(width:300,height: 200)
            
            Text("VOU DESCOBRIR\nCOMO COLOCAR\nVÍDEO AQUI").foregroundStyle(.white)
        }
    }
}

#Preview {
    VideoPreview()
}
