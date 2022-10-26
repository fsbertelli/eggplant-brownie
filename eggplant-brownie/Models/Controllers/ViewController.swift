//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by FELIPE BERTELLI DOS SANTOS on 24/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var nomeTextField: UITextField?
    
    @IBOutlet weak var felicidadeTextField: UITextField?
    
    @IBAction func adicionar(_ sender: Any) {
        
        //        if let nomeDaRefeicao = nomeTextField?.text,
        //           let felicidadeDaRefeicao = felicidadeTextField?.text{
        //
        //            let nome = nomeDaRefeicao
        //
        //            if let felicidade = Int(felicidadeDaRefeicao){
        //                let refeicao = Refeicao(nome: nome, felicidade: felicidade)
        //            } else      {
        //                print("Erro ao tentar criar a refeicao")
        //            }
        //            print("Comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")    }
        //
        //        }
        //}
        
        guard let nomeDaRefeicao = nomeTextField?.text else {
            return
        }
                
        guard let felicidadeDaRefeicao = felicidadeTextField?.text, let felicidade = Int(felicidadeDaRefeicao) else{
            return
        }
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)
        print("Comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")    }
}
