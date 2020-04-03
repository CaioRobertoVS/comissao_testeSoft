//40% de comissão
import 'package:comissao/cargo.dart';
import 'package:comissao/venda.dart';

class Gerente implements Cargo {
  @override
  double comissao(Venda venda) {
    return venda.valor * 0.4;
  }
}
