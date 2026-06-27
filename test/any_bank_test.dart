void main () {
  QuartoHotelSimples quartoHotelSimples = QuartoHotelSimples('Simples', 101, 80.0, '1');
  QuartoHotelMedio quartoHotelMedio = QuartoHotelMedio('Médio', 202, 250.0, '2');
  QuartoHotelLuxo quartoHotelLuxo = QuartoHotelLuxo('Luxo', 303, 1000.0, '3');
}
class Quarto {
  String tipo;
  double numeroQuarto;
  double valorDiaria;
  String numerodiarias;

  Quarto(this.tipo, this.numeroQuarto, this.valorDiaria, this.numerodiarias);
  void reservar() {
    print('O quarto $tipo, número $numeroQuarto, foi reservado por $numerodiarias diárias, com o valor de R\$$valorDiaria por diária.');
  }
}
class QuartoHotelSimples extends Quarto {
  QuartoHotelSimples(super.tipo, super.numeroQuarto, super.valorDiaria, super.numerodiarias);
  

}

class QuartoHotelMedio extends Quarto {
  QuartoHotelMedio(super.tipo, super.numeroQuarto, super.valorDiaria, super.numerodiarias);
  

}

class QuartoHotelLuxo  extends Quarto {
  QuartoHotelLuxo(super.tipo, super.numeroQuarto, super.valorDiaria, super.numerodiarias);
  
}