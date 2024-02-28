//
//  Receita.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 27/02/24.
//

import Foundation

struct EtapaReceita{
    var instrucoes: String
    var videoUrl: String
}

struct Receita{
    var nomeReceita: String
    var ingredientes: [String]
    var tempoEstimado: String
    var etapas: [EtapaReceita]
    
}
