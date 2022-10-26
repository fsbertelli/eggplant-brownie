//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by FELIPE BERTELLI DOS SANTOS on 26/10/22.
//

import UIKit

class Refeicao: NSObject {
    
    // -- MARK ATRIBUTOS
    let nome: String
    let felicidade: Int
    let itens: Array<Item> = []
    
    // -- MARK CONSTRUTOR OU INIT
    
    init(nome: String, felicidade: Int){
        self.nome = nome
        self.felicidade = felicidade
    }
    
    // -- MARK METODOS
    
    func calculaCalorias() -> Double{
        var total = 0.0
        
        for item in itens {
            total += item.calorias
        }
        return total
    }
}
