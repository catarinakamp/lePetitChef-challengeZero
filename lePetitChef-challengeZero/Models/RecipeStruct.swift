//
//  RecipeStruct.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 27/02/24.
//

import Foundation

struct Steps {
    var numeration: String // Exemplo: "Primeiro", "Segundo"...
    var title: String // Exemplo: "Cortar alho"
    var description: String // Passo a passo detalhado
    var nomeArquivo: String
    // Criar uma variável com URL/Nome/Arquivo do vídeo assim que descobrir a maneira como se insere vídeos
}

struct Recipe {
    var title: String
    var estimatedTime: String
    var ingredients: [String]
    var steps: [Steps]
    var imageName: String
}


