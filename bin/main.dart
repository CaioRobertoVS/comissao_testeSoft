import 'dart:io';
import 'package:comissao/cliente.dart';
import 'package:comissao/funcionario.dart';
import 'package:comissao/gerente.dart';
import 'package:comissao/supervisor.dart';
import 'package:comissao/venda.dart';

void main() {
  var gerente = Gerente();
  var supervisor = Supervisor();
  String cargo;

  var cliente = Cliente();
  var funcionario = Funcionario();
  var venda = Venda();

  cliente.nome = readLine('Nome do cliente: ');
  venda.valor = double.tryParse(readLine('Valor da venda: '));
  funcionario.nome = readLine('Nome do funcionário: ');

  cargo = readLine('Cargo do cliente (gerente/supervisor): ');

  switch (cargo) {
    case 'gerente':
      {
        var gerenteVenda = gerente.comissao(venda).toStringAsFixed(2);
        print('A comissão do gerente é: R\$ $gerenteVenda');
        print('O valor da sua última venda foi R\$ ${venda.valor}');
        print('Seu último cliente foi ${cliente.nome}');
      }
      break;
    case 'supervisor':
      {
        var supervisorVenda = supervisor.comissao(venda).toStringAsFixed(2);
        print('A comissão do supervisor é: R\$ $supervisorVenda');
        print('O valor da sua última venda foi R\$ ${venda.valor}');
        print('Seu último cliente foi ${cliente.nome}');
      }
      break;
    default:
      print('ERRO');
      break;
  }
}

String readLine(String description) {
  stdout.write(description);
  return stdin.readLineSync();
}

void writeLine(String description) {
  stdout.writeln(description);
}
