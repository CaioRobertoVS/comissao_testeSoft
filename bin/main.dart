import 'package:comissao/cliente.dart';
import 'package:comissao/funcionario.dart';
import 'package:comissao/gerente.dart';
import 'package:comissao/supervisor.dart';
import 'package:comissao/venda.dart';

void main() {
  var gerente = Gerente();
  var supervisor = Supervisor();

  var cliente = Cliente(nome: 'João');

  var caio = Funcionario(nome: 'Pedro', cargo: gerente);
  var pedro = Funcionario(nome: 'Caio', cargo: supervisor);
  var venda1 = Venda(valor: 100, cliente: cliente, funcionario: caio);
  var venda2 = Venda(valor: 100, cliente: cliente, funcionario: pedro);

  var gerenteVenda = gerente.comissao(venda1).toStringAsFixed(2);
  var supervisorVenda = supervisor.comissao(venda2).toStringAsFixed(2);

  print('A comissão do gerente é: R\$ $gerenteVenda');
  print('A comissão do supervisor é: R\$ $supervisorVenda');
}
