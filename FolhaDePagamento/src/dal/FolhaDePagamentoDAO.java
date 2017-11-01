package dal;

import java.util.ArrayList;

import model.FolhaDePagamento;

public class FolhaDePagamentoDAO {

	private static ArrayList<FolhaDePagamento> folhas = new ArrayList<FolhaDePagamento>();

	public static void cadastrarFolhaDePagamento(FolhaDePagamento folha) {
		if (folhas.size() > 0) {
			int id = folhas.get(folhas.size() - 1).getId() + 1;
			folha.setId(id);
		}else{
			folha.setId(1);
		}
		folhas.add(folha);
	}

	public static FolhaDePagamento buscarFolhaDePagamentoPorId(int id) {
		for (int i = 0; i < folhas.size(); i++) {
			if (id == folhas.get(i).getId()) {
				return folhas.get(i);
			}
		}
		return null;
	}
	
	public static ArrayList<FolhaDePagamento> retornarLista(){
		return folhas;
	}
}










