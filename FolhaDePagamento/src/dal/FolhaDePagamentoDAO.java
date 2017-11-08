package dal;

import java.util.ArrayList;

import model.Conta;

public class FolhaDePagamentoDAO {

	private static ArrayList<Conta> folhas = new ArrayList<Conta>();

	public static void cadastrarFolhaDePagamento(Conta folha) {
		if (folhas.size() > 0) {
			int id = folhas.get(folhas.size() - 1).getId() + 1;
			folha.setId(id);
		}else{
			folha.setId(1);
		}
		folhas.add(folha);
	}

	public static Conta buscarFolhaDePagamentoPorId(int id) {
		for (int i = 0; i < folhas.size(); i++) {
			if (id == folhas.get(i).getId()) {
				return folhas.get(i);
			}
		}
		return null;
	}
	
	public static ArrayList<Conta> retornarLista(){
		return folhas;
	}
}










