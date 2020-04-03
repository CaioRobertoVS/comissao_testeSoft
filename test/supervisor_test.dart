import 'package:comissao/supervisor.dart';
import 'package:comissao/venda.dart';
import 'package:test/test.dart';

void main() {
  group('Supervisor', () {
    test("comissao igual '30'", () {
      var venda = Venda(valor: 100);
      final supervisor = Supervisor();
      expect(supervisor.comissao(venda), 30);
    });

    test("comissao igual '750'", () {
      var venda = Venda(valor: 2500);
      final supervisor = Supervisor();
      expect(supervisor.comissao(venda), 750);
    });
  });
}
