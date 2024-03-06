//
//  OurRecipes.swift
//  lePetitChef-challengeZero
//
//  Created by Catarina Liberato on 28/02/24.
//

import Foundation

class OurRecipes {
    
    var arrayOfRecipes: [Recipe] = [
        
        Recipe(title: "Ratatouille", estimatedTime: "120 minutos", ingredients: [
            "2 berinjelas",
            "2 abobrinhas",
            "2 pimentões vermelhos",
            "2 pimentões amarelos",
            "4 tomates",
            "1 cebola",
            "4 dentes de alho",
            "Azeite de oliva extra virgem",
            "Sal e pimenta-do-reino a gosto",
            "Folhas de manjericão"
        ], steps: [
            Steps(
                numeration: "Primeiro",
                title: "Preparar os Legumes",
                description: "Lave todos os legumes. Corte as berinjelas, as abobrinhas, os pimentões e os tomates em rodelas. Fatie a cebola em meias-luas finas e pique o alho.",
                nomeArquivo: "cortarAlimentos"
            ),
            Steps(
                numeration: "Segundo",
                title: "Montar e temperar",
                description: "Em uma assadeira grande, distribua as rodelas de legumes intercaladas em pé, formando fileiras. Tempere os legumes com sal e pimenta-do-reino a gosto e regue com azeite de oliva.",
                nomeArquivo: "temperos"
            ),
            Steps(
                numeration: "Terceiro",
                title: "Assar",
                description: "Leve a assadeira ao forno preaquecido a 180°C por cerca de 45 minutos. Retire o ratatouille do forno e sirva em pratos individuais, decorando com folhas de manjericão fresco.",
                nomeArquivo: "pegarIngredientes"
            )
        ], imageName: "ratatouille"),

        Recipe(title: "Sopa de Tomate", estimatedTime: "45 minutos", ingredients: [
            "1kg de tomate",
            "1 cebola",
            "2 cenouras",
            "2 dentes de alho",
            "4 xícaras de caldo de legumes",
            "2 colheres de sopa de azeite de oliva",
            "1 colher de chá de açúcar",
            "1 colher de chá de tomilho seco",
            "Sal e pimenta a gosto",
            "Folhas de manjericão fresco para decorar"
        ], steps: [
            Steps(
                numeration: "Primeiro",
                title: "Preparar Ingredientes",
                description: "Corte os tomates em pedaços, pique a cebola, descasque e pique as cenouras, e pique o alho.",
                nomeArquivo: "cortarAlimentos"
            ),
            Steps(
                numeration: "Segundo",
                title: "Refogar Vegetais",
                description: "Em uma panela grande, aqueça o azeite de oliva. Adicione a cebola e o alho picados, refogando até que fiquem dourados. Adicione as cenouras e continue cozinhando por mais alguns minutos.",
                nomeArquivo: "ingredientesPanela"
            ),
            Steps(
                numeration: "Terceiro",
                title: "Adicionar Tomates e Temperos",
                description: "Acrescente os tomates cortados à panela. Tempere com açúcar, tomilho seco, sal e pimenta a gosto.",
                nomeArquivo: "temperos"
            ),
            Steps(
                numeration: "Quarto",
                title: "Cozinhar e Liquidificar",
                description: "Adicione o caldo de vegetais ou frango à panela. Leve a sopa para ferver e, em seguida, reduza o fogo. Cozinhe por mais 20 minutos. Use um liquidificador ou mixer de mão para purê a sopa até obter uma consistência cremosa.",
                nomeArquivo: "pegarIngredientes"
            )
        ], imageName: "tomato-soup"),

        
        Recipe(title: "Croque Monsieur", estimatedTime: "25 minutos", ingredients: [
            "8 fatias de pão de forma",
            "4 fatias de presunto",
            "200g de queijo gruyère",
            "50g de queijo parmesão",
            "4 colheres de sopa de manteiga",
            "4 colheres de sopa de farinha de trigo",
            "2 xícaras de leite",
            "1 colher de chá de mostarda Dijon",
            "Noz-moscada a gosto",
            "Sal e pimenta a gosto"
        ], steps: [
            Steps(
                numeration: "Primeiro",
                title: "Preparar Ingredientes",
                description: "Pique o queijo gruyère e o queijo parmesão. Reserve.",
                nomeArquivo: "cortarAlimentos"
            ),
            Steps(
                numeration: "Segundo",
                title: "Preparar o Molho Béchamel",
                description: "Em uma panela, derreta a manteiga em fogo médio. Adicione a farinha e mexa continuamente por 3 minutos. Gradualmente, adicione o leite, mexendo constantemente até obter um molho cremoso. Acrescente a mostarda Dijon, noz-moscada, sal e pimenta a gosto.",
                nomeArquivo: "baterIngredientes"
            ),
            Steps(
                numeration: "Terceiro",
                title: "Montar os Croque Monsieur",
                description: "Em uma assadeira, coloque 4 fatias de pão. Em cada fatia, coloque uma fatia de presunto, uma porção do queijo gruyère ralado e um pouco do molho Béchamel. Cubra com as fatias de pão restantes.",
                nomeArquivo: "pegarIngredientes"
            ),
            Steps(
                numeration: "Quarto",
                title: "Adicionar o Molho e Queijo",
                description: "Despeje o molho Béchamel restante sobre os sanduíches. Polvilhe com o queijo parmesão ralado.",
                nomeArquivo: "jogarMolho"
            ),
            Steps(
                numeration: "Quinto",
                title: "Assar",
                description: "Asse os Croque Monsieur em forno preaquecido a 200°C por cerca de 10 minutos, ou até que fiquem dourados e borbulhantes. Retire do forno e sirva os Croque Monsieur quentes.",
                nomeArquivo: "mexerPanela"
            )
        ], imageName: "croque-monsier"),
        
        Recipe(title: "Crème Brûlée", estimatedTime: "120 minutes", ingredients: [
            "6 gemas de ovo",
            "1/2 xícara de açúcar",
            "2 xícaras de creme de leite",
            "1 colher de chá de essência de baunilha",
            "Açúcar para caramelizar"
        ], steps: [
            Steps(
                numeration: "Primeiro",
                title: "Quebrar Ovos e Separar Gemas",
                description: "Quebre os ovos, separe as gemas das claras e reserve apenas as gemas.",
                nomeArquivo: "quebrarOvo"
            ),
            Steps(
                numeration: "Segundo",
                title: "Preparar Mistura de Gemas",
                description: "Pré-aqueça o forno a 150°C. Em uma tigela, bata as gemas com açúcar até obter uma mistura homogênea.",
                nomeArquivo: "baterIngredientes"
            ),
            Steps(
                numeration: "Terceiro",
                title: "Aquecer Creme de Leite",
                description: "Em uma panela, aqueça o creme de leite até começar a ferver. Adicione a essência de baunilha.",
                nomeArquivo: "temperos"
            ),
            Steps(
                numeration: "Quarto",
                title: "Adicionar Gemas à Mistura de Creme",
                description: "Despeje gradualmente o creme de leite quente sobre a mistura de gemas, mexendo constantemente. Coe a mistura para remover qualquer grumo.",
                nomeArquivo: "variasPanelas"
            ),
            Steps(
                numeration: "Quinto",
                title: "Assar",
                description: "Despeje a mistura em ramequins. Asse em banho-maria no forno por cerca de 45 minutos. Antes de servir, polvilhe açúcar sobre a superfície do creme e use um maçarico para caramelizar.",
                nomeArquivo: "pegarIngredientes"
            )
        ], imageName: "cremme-brulee"),
        
        Recipe(title: "Coq au Vin", estimatedTime: "120 minutos", ingredients: [
            "1 frango",
            "200g de bacon",
            "1 cebola",
            "2 cenouras",
            "4 dentes de alho",
            "250ml de vinho tinto seco",
            "250ml de caldo de galinha",
            "2 colheres de sopa de farinha de trigo",
            "2 colheres de sopa de manteiga",
            "1 bouquet garni",
            "Sal e pimenta a gosto"
        ], steps: [
            Steps(
                numeration: "Primeiro",
                title: "Preparar Ingredientes",
                description: "Pique o frango em pedaços, o bacon em cubos, a cebola, a cenoura em rodelas e o alho.",
                nomeArquivo: "cortandoFaca"
            ),
            Steps(
                numeration: "Segundo",
                title: "Dourar o Frango e Bacon",
                description: "Em uma panela grande, derreta a manteiga em fogo médio. Adicione o bacon e cozinhe até dourar. Retire o bacon e reserve. Em seguida, doure os pedaços de frango em todos os lados. Tempere com sal e pimenta.",
                nomeArquivo: "mexerPanela"
            ),
            Steps(
                numeration: "Terceiro",
                title: "Adicionar Vegetais",
                description: "Adicione a cebola, a cenoura e o alho picado à panela. Cozinhe por alguns minutos até que os vegetais estejam macios.",
                nomeArquivo: "ingredientesPanela"
            ),
            Steps(
                numeration: "Quarto",
                title: "Polvilhar com Farinha",
                description: "Polvilhe a farinha sobre os ingredientes e mexa bem para incorporar.",
                nomeArquivo: "variasPanelas"
            ),
            Steps(
                numeration: "Quinto",
                title: "Deglacear com Vinho Tinto",
                description: "Despeje o vinho tinto na panela para deglacear, raspando o fundo para soltar os sabores. Adicione o caldo de galinha e o bouquet garni. Coloque o bacon dourado de volta à panela.",
                nomeArquivo: "vinhoCopo"
            ),
            Steps(
                numeration: "Sexto",
                title: "Cozinhar Lentamente",
                description: "Reduza o fogo, tampe a panela e cozinhe em fogo baixo por aproximadamente 1 hora e meia a 2 horas, ou até que o frango esteja bem cozido e o molho tenha engrossado.",
                nomeArquivo: "mexerPanela"
            )
        ], imageName: "coq_au_vin")

        
    ]
    
}
