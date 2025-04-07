import 'package:flutter_ex/conta_corrente.dart';
import 'package:flutter/material.dart';

void main() {
  //runApp(const MainApp());
  ContaCorrente cc1 = ContaCorrente("Mário"); // instanciar conta corrente
  ContaCorrente cc2 = ContaCorrente("João");
  print(cc1);
  cc1.depositar(500);
  print(cc1);
  print(cc1.sacar(300) ? "Saque realizado" : "Saldo insuficiente");
  print(cc1);
  print(
    cc1.transferir(100, cc2) ? "Transferência realizada" : "Saldo insuficiente",
  );
  print(cc1);
  print(cc2);
  extrato(cc1.operacoes);
}

void extrato(operacoes) {
  for (var operacao in operacoes) {
    print(operacao);
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: Text('Hello World!'))),
    );
  }
}
