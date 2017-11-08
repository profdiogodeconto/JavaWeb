package dal;

import java.util.ArrayList;

import model.Conta;

public class ContaDAO {
	
	private static ArrayList<Conta> contas = new ArrayList<Conta>();

	public static void cadastrarConta(Conta conta) {
		if (contas.size() > 0) {
			int id = contas.get(contas.size() - 1).getId() + 1;
			conta.setId(id);
		}else{
			conta.setId(1);
		}
		contas.add(conta);
	}

	public static Conta buscarContaPorId(int id) {
		for (int i = 0; i < contas.size(); i++) {
			if (id == contas.get(i).getId()) {
				return contas.get(i);
			}
		}
		return null;
	}
	
	public static ArrayList<Conta> retornarLista(){
		return contas;
	}

	public static ArrayList<Conta> filtrarListaPorContaReceber(){
		ArrayList<Conta> aux = new ArrayList<Conta>();
		for (Conta contaCadastrada : contas) {
			if(contaCadastrada.getTipo().equals("RECEBER")){
				aux.add(contaCadastrada);
			}
		}
		return aux;
	}

	public static ArrayList<Conta> filtrarListaPorContaPagar(){
		ArrayList<Conta> aux = new ArrayList<Conta>();
		for (Conta contaCadastrada : contas) {
			if(contaCadastrada.getTipo().equals("PAGAR")){
				aux.add(contaCadastrada);
			}
		}
		return aux;
	}
}
