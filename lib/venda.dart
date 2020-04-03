import 'package:comissao/cliente.dart';
import 'package:comissao/funcionario.dart';

class Venda {
  double valor;
  Cliente cliente;
  Funcionario funcionario;

  Venda({
    this.valor,
    this.cliente,
    this.funcionario,
  });
}
