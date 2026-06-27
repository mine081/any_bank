
abstract class Conta {
  String titular;
  double _saldo;
  
  Conta(this.titular, this._saldo,);

  void receber( double valor) {
    _saldo += valor;
    imprimirSaldo();
  }

  void enviar(double valor) {
    if (_saldo >= valor)  {
      _saldo -= valor;
      imprimirSaldo();
    }
  }

  void imprimirSaldo() {
    print('O saldo atual de $titular, é: R\$$_saldo');
  }
}
  
class ContaCorrente extends Conta {
  double emprestimo = 1000;

  ContaCorrente(super.titular, super._saldo);

  @override
  void enviar(double valor) {
    if(_saldo + emprestimo >= valor) {
      _saldo -= valor;
      imprimirSaldo();
  }
}
}
class ContaPoupanca extends Conta {
  double rendimento = 0.5;

  ContaPoupanca(super.titular, super._saldo);

  void calcularRendimento() {
    _saldo += _saldo * rendimento;
    imprimirSaldo();
  }
}

  
class ContaEmpresa extends Conta {
  String cnpj;
  String nomeEmpresa; 
  
  ContaEmpresa(super.titular, super._saldo, this.cnpj, this.nomeEmpresa);

  
  void depositar(double valor) {
    _saldo += valor;
    imprimirSaldo();
    print('O salário da $nomeEmpresa, CNPJ $cnpj, foi depositado com sucesso!');
  }
}
