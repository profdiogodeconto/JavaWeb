package util;

import dal.ContaDAO;
import model.Conta;

public class Calculos {

	public static double calcularContasPagar(){
		double total = 0;
		for (Conta contaCadastrada : ContaDAO.filtrarContasPagar()) {
			total += contaCadastrada.getValor();			
		}
		return total;
	}

	public static double calcularContasReceber(){
		double total = 0;
		for (Conta contaCadastrada : ContaDAO.filtrarContasReceber()) {
			total += contaCadastrada.getValor();			
		}
		return total;
	}
	
}
