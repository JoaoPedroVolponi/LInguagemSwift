import UIKit
/* Implemente a classe Funcionario com nome, salario e os métodos
addAumento(double valor), ganhoAnual() e exibeDados() - imprime os valores do funcionário.
*/
class Funcionario {
  var nome : String?
  var salario : Double?

    init(nome: String, salario: Double ){
        self.nome = nome
        self.salario = salario
}
    func addAumento() -> Double {
        let somaSalario : Double = salario! + salario! * 0.1
        return somaSalario
}

    func ganhoAnual() -> Double {
        let somaAnual : Double = (salario! + (salario! * 0.1)) * 12
        return somaAnual
}

    func exibeDados(){
        print("Nome : \(nome!)")
        print("Salario : \(salario!)")
        print("Aumento : \(addAumento())")
        print("Ganho Anual : \(ganhoAnual())")
  }
}

print("Funcionario")
var Funcionario1 = Funcionario(nome : "João", salario : 100.00)
Funcionario1.exibeDados()

/*
crie a classe Assistente, que também é um funcionário, e que possui um número de
matrícula (faça os métodos GET e SET). Sobrescreva o método exibeDados().
*/
class Assistente: Funcionario {
  var matricula: Int?

    init(nome: String, salario: Double, matricula: Int){
    self.matricula = matricula
    super.init(nome: nome, salario: salario)
}
  override func exibeDados(){
    print("Nome: \(nome!)")
    print("Salario: \(salario!)")
    print("Matricula: \(matricula!)")
    print("Aumento Salario : \(addAumento())")
    print("Ganho Anual: \(ganhoAnual())")
    
  }
}
print("Assistente")
    var Funcionario2 = Assistente(nome: "Pedro", salario: 200.00, matricula: 10)
    Funcionario2.exibeDados()

/*
sabendo que os Assistentes Técnicos possuem um bônus salarial e que os Assistentes
Administrativos possuem um turno (dia ou noite) e um adicional noturno, crie as classes
Tecnico e Administrativo e sobrescreva o método ganhoAnual() de ambas as classes
(Administrativo e Tecnico
*/
class Tecnico: Assistente {
    var bonusSalario: Double?

init(nome: String, salario: Double, matricula: Int, bonusSalario: Double){
    self.bonusSalario = bonusSalario
    super.init(nome: nome, salario: salario, matricula:matricula)
}
override func ganhoAnual() -> Double{
    let ganhoAnual: Double = ((salario! * 0.1) * 12) + bonusSalario!
    return ganhoAnual
  }
}
var Funcionario3 = Assistente(nome:"Big Big", salario: 1000.00, matricula: 100)
  Funcionario3.exibeDados()

class Administrativo : Assistente {
    var turno: String?
    
    init( nome: String, salario: Double, matricula: Int, turno: String){
        self.turno = turno
        super.init(nome: nome, salario: salario, matricula: matricula)
}
    override func ganhoAnual() -> Double {
        var ganhoAnual: Double = ((salario! + (salario! * 0.1) * 12 ))
        
        if turno == "Dia" {
                ganhoAnual = super.ganhoAnual()
        }
        return ganhoAnual
    }
}
var Funcionario4 = Tecnico(nome: "Big Big", salario: 200.00, matricula: 11, bonusSalario: 1.3)
Funcionario4.exibeDados()


