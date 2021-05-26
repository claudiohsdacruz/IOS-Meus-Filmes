//
//  NovoViewController.swift
//  Meus Filmes
//
//  Created by Claudio Henrique Soares da Cruz on 26/05/21.
//

import UIKit

class NovoViewController: UIViewController {
    
    var cadastro: Cadastro!

    @IBOutlet weak var tfNome: UITextField!
    @IBOutlet weak var sldNota: UISlider!
    @IBOutlet weak var lblNota: UILabel!
    @IBOutlet weak var swtIndicado: UISwitch!
    @IBOutlet weak var stpVisualizacoes: UIStepper!
    @IBOutlet weak var lblVisualizacoes: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.cadastro = (UIApplication.shared.delegate as! AppDelegate).cadastro
    }
    
    @IBAction func definirNota(_ sender: Any) {
        self.lblNota.text = String(Int(sldNota.value))
    }
    
    @IBAction func definirVisualizacoes(_ sender: Any) {
        self.lblVisualizacoes.text = String(Int(stpVisualizacoes.value))
    }
   
    @IBAction func salvar(_ sender: Any) {
        let nome = self.tfNome.text!
        let nota = Int(self.sldNota.value)
        let indicado = self.swtIndicado.isOn
        let visualizacoes = Int(self.stpVisualizacoes.value)
        let filme = Filme(nome: nome, nota: nota, indicado: indicado, visualizacoes: visualizacoes)
        
        self.cadastro.add(filme: filme)
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
