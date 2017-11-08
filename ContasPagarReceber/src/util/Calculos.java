package util;

import dal.ContaDAO;
import model.Conta;

public class Calculos {

	public static double totalizarContasPagar(){
		double total = 0;
		for (Conta contaCadastrada : ContaDAO.filtrarListaPorContaPagar()) {
			total += contaCadastrada.getValor();
		}
		return total;
	}

	public static double totalizarContasReceber(){
		double total = 0;
		for (Conta contaCadastrada : ContaDAO.filtrarListaPorContaReceber()) {
			total += contaCadastrada.getValor();
		}
		return total;
	}
}
