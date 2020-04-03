//40% de comiss�o
 import 'package:comissao/cargo.dart';

class Gerente implements Cargo{
	 static Gerente gerente;
	
	 Gerente() {}
	
	 static Gerente getInstance() {
		if (gerente == null) {
			gerente = new Gerente();
		}
		return gerente;
	}
	
	 double calculaComissao(Venda venda) {
		return venda.getValor() * 0.4;
	}
	
	 double calculaComissao(double valor) {
		return valor * 0.4;
	}
}