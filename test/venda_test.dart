import 'package:comissao/funcionario.dart';
import 'package:comissao/gerente.dart';
import 'package:comissao/venda.dart';
import 'package:test/test.dart';

void main() {
  group('Venda', () {
    test("Valor igual a '0'", () {
      final venda = Venda();
      expect(venda.valor, 0);
    });

    test("Valor igual a '150'", () {
      final venda = Venda(valor: 150);
      expect(venda.valor, 150);
    });

    test("valor e funcionario '1754, sara'", () {
      var gerente = Gerente();
      var sara = Funcionario(nome: 'Sara', cargo: gerente);

      final venda = Venda(valor: 1800, funcionario: sara);
      venda.valor = venda.valor - 46;

      expect(venda.valor, 1754);
      expect(sara.nome, 'Sara');
    });
  });
}
