package dal;

import java.util.ArrayList;

import model.Produto;

public class ProdutoDAO {

	private static ArrayList<Produto> produtos = new ArrayList<Produto>();

	public static boolean cadastrarProduto(Produto produto) {
		if (produtos.size() > 0) {
			int id = produtos.get(produtos.size() - 1).getId() + 1;
			produto.setId(id);
		} else {
			produto.setId(1);
		}
		if (buscarProdutoPorNome(produto) == null) {
			produtos.add(produto);
			return true;
		}
		return false;
	}

	public static ArrayList<Produto> listarProdutos() {
		return produtos;
	}

	public static Produto buscarProdutoPorNome(Produto produto) {

		for (Produto produtoCadastrado : produtos) {
			if (produtoCadastrado.getNome().equals(produto.getNome())) {
				return produtoCadastrado;
			}
		}
		return null;
	}

	public static Produto buscarProdutoPorId(int idProduto) {
		for (Produto produtoCadastrado : produtos) {
			if (produtoCadastrado.getId() == idProduto) {
				return produtoCadastrado;
			}
		}
		return null;
	}

	public static boolean removerProduto(int idProduto) {
		Produto p = buscarProdutoPorId(idProduto);
		if (p == null) {
			return false;
		}
		produtos.remove(p);
		return true;
	}

	public static boolean alterarProduto(Produto produto) {
		for (int i = 0; i < produtos.size(); i++) {
			if (produto.getId() == produtos.get(i).getId()) {
				produtos.set(i, produto);
				return true;
			}
		}
		return false;
	}

}
