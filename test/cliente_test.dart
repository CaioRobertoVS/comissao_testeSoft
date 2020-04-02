import 'package:comissao/cliente.dart';
import 'package:test/test.dart';

void main() {
  group('Cliente', () {
    test("deve ter nome igual 'Caio'", () {
      final cliente = Cliente(
        nome: 'Caio',
      );
      expect(cliente.nome, 'Caio');
    });

    test("deve ter nome igual 'Eli'", () {
      final cliente = Cliente(
        nome: 'Eli',
      );
      expect(cliente.nome, 'Eli');
    });
  });
}
