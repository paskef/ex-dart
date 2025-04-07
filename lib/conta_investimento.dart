import 'package:flutter_ex/conta.dart';

class ContaInvestimento extends Conta {
  String nomeInv = "";
  double _indReaj;

  ContaInvestimento(this._indReaj, super.titular);

  void reajustar() {
    saldo *= _indReaj;
  }
}
