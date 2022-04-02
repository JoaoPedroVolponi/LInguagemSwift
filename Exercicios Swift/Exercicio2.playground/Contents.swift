import UIKit
// A)
class Animal {
    var nome: String?
    var raca: String?
    
    init(nome: String, raca: String){
        self.nome = nome
        self.raca = raca
    }
    func caminha(){
        print("Animal: \(nome!), Caminha")
    }
}

class Cachorro: Animal {
    
    func late(){
        print("Cachorro: \(nome!), Late")
    }
}

class Gato: Animal{
    func mia (){
        print("Gato: \(nome!), Mia")
    }
}

// B)
class Pessoa {
    var nome: String?
    var idade: Int?
    
    init(nome: String, idade: Int){
        self.nome = nome
        self.idade = idade
    }
    func vive(){
        print("\(nome!),Pessoa")
    }
}

class Rica: Pessoa {
    var dinheiro: Double? = 100.0
    init(nome: String, idade: Int, dinheiro: Double){
        self.dinheiro = dinheiro
    super.init(nome: nome, idade: idade)
}

func fazCompras(){
    print("Dinheiro: \(dinheiro!)")
    }
}
print("Pessoa : Rica")
var pessoarica = Rica(nome: "Joao", idade: 20, dinheiro: 100)
pessoarica.fazCompras()
pessoarica.vive()
print(" ")
print("----------------------")


class Pobre: Pessoa{
    func trabalha(){
        print("\(nome!), Trabalha")
    }
    override func vive() {
        print(" \(nome!), Vive")
    }
}
print("Pessoa : Pobre")
var pessoapobre = Pobre(nome: "Pedro", idade: 21)
pessoapobre.trabalha()
pessoapobre.vive()
print(" ")
print("----------------------")

//miseravel
class Miseravel: Pessoa{
    func mendiga(){
        print("\(nome!), Mendiga")
    }
    override func vive(){
        print("\(nome!), Vive")
    }
}
print("Pessoa : Miseravel")
var pessoamiseravel = Miseravel(nome: "Big Big", idade: 22)
pessoamiseravel.mendiga()
pessoamiseravel.vive()
