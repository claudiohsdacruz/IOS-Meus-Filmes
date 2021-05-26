//
//  Cadastro.swift
//  Meus Filmes
//
//  Created by Claudio Henrique Soares da Cruz on 26/05/21.
//

import Foundation

class Cadastro {
    private var lista: Array<Filme>
    private var filmeParaEdicao: Int
    
    init() {
        self.lista = Array()
        self.filmeParaEdicao = -1
    }
    
    func add(filme: Filme) {
        self.lista.append(filme)
    }
    
    func count() -> Int {
        return self.lista.count
    }
    
    func get(index: Int) -> Filme {
        return self.lista[index]
    }
    
    func get() -> Array<Filme> {
        return self.lista
    }
}

