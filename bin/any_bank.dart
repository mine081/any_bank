import 'package:any_bank/conta.dart';

void main() {
  
  ContaCorrente contaChris = ContaCorrente('Chris', 4000);
  ContaPoupanca contaPedro = ContaPoupanca('Pedro', 4000);
  ContaEmpresa contaEmpresa = ContaEmpresa('Nicolas Bento', 10000, '123456789', 'anybank LTDA');
  
  

  List<Conta> contas = [contaChris, contaPedro, contaEmpresa];

  for (Conta conta in contas) {
    conta.imprimirSaldo();
  }

  
  contaChris.imprimirSaldo();
  contaChris.enviar(4300);

  contaPedro.imprimirSaldo();
  contaPedro.enviar(4300);
  contaPedro.calcularRendimento();
  contaPedro.imprimirSaldo();

  contaEmpresa.depositar(1000);
  contaEmpresa.receber(5000);
  

}


