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
            "2 berinjelas médias",
            "2 abobrinhas médias",
            "2 pimentões vermelhos",
            "2 pimentões amarelos",
            "4 tomates grandes",
            "1 cebola grande",
            "4 dentes de alho",
            "Azeite de oliva extra virgem",
            "Sal e pimenta-do-reino a gosto",
            "Folhas de manjericão fresco para decorar"
        ], steps: [
            Steps(
                numeration: "Primeiro",
                title: "Preparar os Legumes",
                description: "Lave todos os legumes. Corte as berinjelas, as abobrinhas, os pimentões e os tomates em rodelas de aproximadamente 0,5 cm de espessura. Fatie a cebola em meias-luas finas e pique o alho.",
                nomeArquivo: ""
            ),
            Steps(
                numeration: "Segundo",
                title: "Montar o Ratatouille",
                description: "Em uma assadeira grande, distribua as rodelas de legumes intercaladas em pé, formando fileiras. Tempere os legumes com sal e pimenta-do-reino a gosto e regue com azeite de oliva.",
                nomeArquivo: ""
            ),
            Steps(
                numeration: "Terceiro",
                title: "Assar",
                description: "Leve a assadeira ao forno preaquecido a 180°C por cerca de 45 minutos a 1 hora, ou até que os legumes estejam macios e dourados.",
                nomeArquivo: ""
            ),
            Steps(
                numeration: "Quarto",
                title: "Servir",
                description: "Retire o ratatouille do forno e deixe esfriar por alguns minutos. Sirva em pratos individuais, decorando com folhas de manjericão fresco.",
                nomeArquivo: ""
            )
        ]),
        
        Recipe(title: "Tomato soup", estimatedTime: "40 minutos", ingredients: [
            "1 kg de tomates maduros",
            "1 cebola grande, picada",
            "2 dentes de alho picados",
            "2 colheres de sopa de azeite de oliva",
            "4 xícaras de caldo de legumes",
            "1 colher de chá de açúcar",
            "Sal e pimenta a gosto",
            "Folhas de manjericão fresco para decorar",
            "Creme de leite fresco ou iogurte natural (opcional)"
        ], steps: [
            Steps(
                numeration: "Primeiro",
                title: "Preparar os Tomates",
                description: "Lave os tomates e faça um corte em cruz na parte inferior de cada um. Coloque os tomates em uma panela com água fervente por alguns minutos, até que a pele comece a se soltar. Retire os tomates da água e coloque-os em água gelada para esfriar. Remova a pele dos tomates e pique grosseiramente.",
                nomeArquivo: ""
            ),
            Steps(
                numeration: "Segundo",
                title: "Refogar os Vegetais",
                description: "Em uma panela grande, aqueça o azeite de oliva em fogo médio. Adicione a cebola picada e refogue até que fique macia e translúcida, por cerca de 5 minutos. Adicione o alho picado e refogue por mais 1 minuto.",
                nomeArquivo: ""
            ),
            Steps(
                numeration: "Terceiro",
                title: "Cozinhar os Ingredientes",
                description: "Adicione os tomates picados à panela, juntamente com o caldo de legumes, o açúcar, o sal e a pimenta. Deixe ferver e depois reduza o fogo para médio-baixo. Cozinhe por cerca de 20-25 minutos, até que os tomates estejam bem cozidos.",
                nomeArquivo: ""
            ),
            Steps(
                numeration: "Quarto",
                title: "Purê e Servir",
                description: "Retire a panela do fogo e use um liquidificador de imersão para purê a sopa até ficar homogênea. Se preferir uma consistência mais fina, você pode passar a sopa por uma peneira fina. Prove a sopa e ajuste o tempero, se necessário. Sirva a sopa quente, decorada com algumas folhas de manjericão fresco por cima. Acompanhe com pão fresco ou torradas.",
                nomeArquivo: ""
            )
        ]),
        
        Recipe(title: "Croque Monsier", estimatedTime: "30 minutos", ingredients: [
            "4 fatias de pão de forma",
            "4 fatias de presunto",
            "150g de queijo gruyère ou emmental ralado",
            "4 colheres de sopa de molho bechamel",
            "2 colheres de sopa de manteiga",
            "Sal e pimenta a gosto",
            "Noz-moscada ralada a gosto"
        ], steps: [
            Steps(
                numeration: "Primeiro",
                title: "Montagem",
                description: "Em cada fatia de pão de forma, coloque uma fatia de presunto e uma porção do queijo ralado. Tempere com sal, pimenta e noz-moscada a gosto.",
                nomeArquivo: ""
            ),
            Steps(
                numeration: "Segundo",
                title: "Molho Bechamel",
                description: "Prepare o molho bechamel derretendo a manteiga em uma panela, adicionando a farinha e mexendo até formar uma pasta. Aos poucos, adicione o leite, mexendo sempre até engrossar. Tempere com sal e noz-moscada a gosto.",
                nomeArquivo: ""
            ),
            Steps(
                numeration: "Terceiro",
                title: "Montagem Final",
                description: "Espalhe uma colher de sopa de molho bechamel sobre cada fatia de pão montada com presunto e queijo. Feche os sanduíches, pressionando levemente.",
                nomeArquivo: ""
            ),
            Steps(
                numeration: "Quarto",
                title: "Assar",
                description: "Em uma frigideira ou chapa aquecida, derreta um pouco de manteiga. Doure os sanduíches dos dois lados até que o queijo esteja derretido e o pão esteja dourado e crocante.",
                nomeArquivo: ""
            ),
            Steps(
                numeration: "Quinto",
                title: "Servir",
                description: "Sirva os Croque Monsieurs quentes, acompanhados de salada verde ou batatas fritas, se desejar.",
                nomeArquivo: ""
            )
        ]),
        
        Recipe(title: "Crème Brûlée", estimatedTime: "60 minutos", ingredients: [
            "500ml de creme de leite fresco",
            "6 gemas de ovos",
            "100g de açúcar",
            "1 colher de chá de extrato de baunilha",
            "Açúcar cristal para caramelizar"
        ], steps: [
            Steps(
                numeration: "Primeiro",
                title: "Preparar a Mistura",
                description: "Pré-aqueça o forno a 150°C. Em uma panela, aqueça o creme de leite até quase ferver. Em uma tigela separada, bata as gemas de ovos com o açúcar até obter uma mistura clara e homogênea. Adicione o extrato de baunilha.",
                nomeArquivo: ""
            ),
            Steps(
                numeration: "Segundo",
                title: "Mistura e Cozimento",
                description: "Misture gradualmente o creme de leite quente na mistura de gemas, mexendo constantemente. Coe a mistura através de uma peneira fina para remover quaisquer grumos. Divida a mistura em ramequins individuais.",
                nomeArquivo: ""
            ),
            Steps(
                numeration: "Terceiro",
                title: "Banho-Maria e Assar",
                description: "Coloque os ramequins em uma assadeira funda. Adicione água quente na assadeira até alcançar metade da altura dos ramequins, criando um banho-maria. Asse no forno pré-aquecido por cerca de 40-45 minutos, ou até que o creme esteja firme nas bordas, mas ainda ligeiramente tremido no centro.",
                nomeArquivo: ""
            ),
            Steps(
                numeration: "Quarto",
                title: "Resfriamento e Caramelização",
                description: "Retire os ramequins do banho-maria e deixe esfriar em temperatura ambiente. Em seguida, leve à geladeira por pelo menos 2 horas ou durante a noite para firmar. Antes de servir, polvilhe uma fina camada de açúcar cristal sobre cada creme e caramelizar com um maçarico culinário até que o açúcar esteja derretido e formando uma crosta dourada.",
                nomeArquivo: ""
            ),
            Steps(
                numeration: "Quinto",
                title: "Servir",
                description: "Sirva os Crèmes Brûlées frios e aproveite a deliciosa combinação de texturas entre a crosta crocante e o creme macio.",
                nomeArquivo: ""
            )
        ] )
        
    ]
    
}
