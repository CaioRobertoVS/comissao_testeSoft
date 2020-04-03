import 'package:comissao/cliente.dart';
import 'package:comissao/funcionario.dart';

class Venda {
  double valor;
  Cliente cliente;
  Funcionario funcionario;

  Venda({this.valor = 0, this.cliente, this.funcionario});
}
