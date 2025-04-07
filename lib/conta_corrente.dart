import 'package:flutter_ex/conta.dart';

class ContaCorrente extends Conta {
  ContaCorrente(
    super.titular,
  ); // titular vai como parâmetro do construtor da classe mãe

  // void exemploList() {
  //   List<String> alunos = [];
  //   alunos.add("Fernanda");
  //   alunos.add("Flávio");

  //   print(alunos[1]);

  //   alunos[1] = "Pedro";
  //   print (alunos[1]);

  //   alunos[10] = "João"; // Erro
  // }
  bool sacar(double valor) {
    if (saldo >= valor) {
      saldo -= valor;
      addHistoricoOp("Saída:", valor);
      return true;
    }
    return false;
  }

  bool transferir(double valor, Conta contaDestino) {
    if (sacar(valor)) {
      contaDestino.depositar(valor);
      return true;
    }
    return false;
  }
}
