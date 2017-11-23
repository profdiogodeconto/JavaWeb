package dal;

import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import model.Categoria;
import model.Produto;

public class ProdutoDAO {

	private static ArrayList<Produto> produtos = new ArrayList<Produto>();

	public static boolean cadastrarProduto(Produto produto) {
		EntityManager em = Conexao.getEntityManager();
		em.getTransaction().begin();
		em.persist(produto);
		em.getTransaction().commit();
		em.close();
		return true;
	}

	public static ArrayList<Produto> listarProdutos() {
		EntityManager em = Conexao.getEntityManager();
		Query q = em.createQuery("SELECT p FROM Produto p");
		ArrayList<Produto> produtosBanco = 
				(ArrayList<Produto>) q.getResultList();
		em.close();
		return produtosBanco;
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

	public static boolean removerProduto(Produto produto) {
		EntityManager em = Conexao.getEntityManager();
		em.getTransaction().begin();
		produto = em.getReference(Produto.class, produto.getId());
		em.remove(produto);
		em.getTransaction().commit();
		em.close();
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
