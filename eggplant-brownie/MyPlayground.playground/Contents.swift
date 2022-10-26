import UIKit

class Refeicao{
    
    // -- MARK ATRIBUTOS
    var nome: String
    var felicidade: String
    var itens: Array<Item> = []
    
    // -- MARK CONSTRUTOR OU INIT
    
    init(nome: String, felicidade: String){
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

class Item{
    
    var nome: String
    var calorias: Double
    
    init(nome: String, calorias: Double){
        self.nome = nome
        self.calorias = calorias
    }
}

let pratoEscolhido = Refeicao(nome: "almoco", felicidade: "10")

let arroz = Item(nome: "Arroz", calorias: 100.5)
let feijao =  Item(nome: "Feijao", calorias: 80)
let carne = Item(nome: "Contra File", calorias: 90)

pratoEscolhido.itens.append(arroz)
pratoEscolhido.itens.append(feijao)
pratoEscolhido.itens.append(carne)

print(pratoEscolhido.nome)

if let primeiroItemDaLista = pratoEscolhido.itens.first{
    print(primeiroItemDaLista.nome)
}

print(pratoEscolhido.calculaCalorias())
