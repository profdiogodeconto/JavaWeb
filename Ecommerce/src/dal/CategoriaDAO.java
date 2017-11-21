package dal;

import java.util.ArrayList;

import javax.persistence.EntityManager;

import model.Categoria;
import model.Produto;

public class CategoriaDAO {

	private static ArrayList<Categoria> categorias = new ArrayList<Categoria>();

	public static boolean cadastrarCategoria(Categoria categoria) {
		EntityManager em = Conexao.getEntityManager();
		em.getTransaction().begin();
		em.persist(categoria);
		em.getTransaction().commit();
		em.close();
		return true;
	}

	public static ArrayList<Categoria> listarCategorias() {
		return categorias;
	}

	public static Categoria buscarCategoriaPorNome(Categoria categoria) {

		for (Categoria categoriaCadastrada : categorias) {
			if (categoriaCadastrada.getNome().equals(categoria.getNome())) {
				return categoriaCadastrada;
			}
		}
		return null;
	}

	public static Categoria buscarCategoriaPorId(int idCategoria) {
		for (Categoria categoriaCadastrada : categorias) {
			if (categoriaCadastrada.getId() == idCategoria) {
				return categoriaCadastrada;
			}
		}
		return null;
	}
}
