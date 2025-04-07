class Conta {
  double saldo = 0;
  String titular = "";
  List<String> _operacoes = [];
  // "obriga" a informar o nome do titular
  Conta(this.titular);
  // não tem () e o get é separado do nome do método
  get operacoes => _operacoes;
  // set operacoes(operacoes){
  //   _operacoes = operacoes;
  // }
  // não altera o comportamento, mas dá um aviso caso não seja reescrito
  @override
  String toString() {
    // reescrita do método
    return "Saldo: ${saldo} - Titular: ${titular}";
  }

  void depositar(double valor) {
    saldo += valor;
    addHistoricoOp("Entrada", valor);
  }

  void addHistoricoOp(String op, double valor) {
    _operacoes.add("Op: $op - Valor: $valor - Data: ${DateTime.now()}");
  }
}
