import 'package:comissao/gerente.dart';
import 'package:comissao/venda.dart';
import 'package:test/test.dart';

void main() {
  group('Gerente', () {
    test("comissao igual '40'", () {
      var venda = Venda(valor: 100);
      final gerente = Gerente();
      expect(gerente.comissao(venda), 40);
    });

    test("comissao igual '160'", () {
      var venda = Venda(valor: 400);
      final gerente = Gerente();
      expect(gerente.comissao(venda), 160);
    });
  });
}
