import 'package:comissao/funcionario.dart';
import 'package:comissao/gerente.dart';
import 'package:comissao/supervisor.dart';
import 'package:test/test.dart';

void main() {
  var gerente = Gerente();
  var supervisor = Supervisor();

  group('Funcionario', () {
    final funcionario = Funcionario(cargo: gerente);
    final funcionario2 = Funcionario(nome: 'Danilo', cargo: supervisor);

    test("cargo deve ser 'gerente'", () {
      expect(funcionario.cargo, gerente);
    });

    test("nome deve ser 'Danilo'", () {
      expect(funcionario2.nome, 'Danilo');
    });

    test("nome deve ser vazio''", () {
      expect(funcionario.nome, '');
    });

    test("cargo deve ser 'supervisor'", () {
      expect(funcionario2.cargo, supervisor);
    });
  });
}
