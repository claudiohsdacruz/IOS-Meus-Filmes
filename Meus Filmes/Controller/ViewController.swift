//
//  ViewController.swift
//  Meus Filmes
//
//  Created by Claudio Henrique Soares da Cruz on 26/05/21.
//

import UIKit

class ViewController: UIViewController {

    var cadastro: Cadastro!
    
    @IBOutlet weak var lblQuantidade: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.cadastro = (UIApplication.shared.delegate as! AppDelegate).cadastro
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.lblQuantidade.text = String(self.cadastro.count())
    }

}

