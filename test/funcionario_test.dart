import 'package:comissao/funcionario.dart';
import 'package:comissao/gerente.dart';
import 'package:comissao/supervisor.dart';
import 'package:test/test.dart';

void main() {
  var gerente = Gerente();
  var supervisor = Supervisor();

  group('Funcionario', () {
    test("cargo deve ser 'gerente'", () {
      final funcionario = Funcionario(cargo: gerente);
      expect(funcionario.cargo, gerente);
    });

    test("nome deve ser 'Danilo'", () {
      final funcionario = Funcionario(nome: 'Danilo', cargo: supervisor);
      expect(funcionario.nome, 'Danilo');
    });

    test("nome deve ser vazio''", () {
      final funcionario = Funcionario(cargo: gerente);
      expect(funcionario.nome, '');
    });

    test("cargo deve ser 'supervisor'", () {
      final funcionario = Funcionario(nome: 'Danilo', cargo: supervisor);
      expect(funcionario.cargo, supervisor);
    });

    test("Cargo e nome deve ser 'supervisor, Sara'", () {
      final funcionario = Funcionario(cargo: supervisor, nome: 'Sara');
      expect(funcionario.cargo, supervisor);
      expect(funcionario.nome, 'Sara');
    });
  });
}
