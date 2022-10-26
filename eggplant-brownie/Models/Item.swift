//
//  Item.swift
//  eggplant-brownie
//
//  Created by FELIPE BERTELLI DOS SANTOS on 26/10/22.
//

import UIKit

class Item: NSObject {
    let nome: String
    let calorias: Double
    
    init(nome: String, calorias: Double){
        self.nome = nome
        self.calorias = calorias
    }
}
