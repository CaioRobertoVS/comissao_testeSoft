import 'package:comissao/cliente.dart';
import 'package:test/test.dart';

void main() {
  group('Cliente', () {
    final cliente = Cliente(nome: 'Caio');
    final cliente2 = Cliente(nome: 'Eli');
    test("deve ter nome igual 'Caio'", () {
      expect(cliente.nome, 'Caio');
    });

    test("deve ter nome igual 'Eli'", () {
      expect(cliente2.nome, 'Eli');
    });
  });
}
