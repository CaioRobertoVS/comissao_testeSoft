import 'package:comissao/venda.dart';

abstract class Cargo {
  double comissao(Venda venda);
}
