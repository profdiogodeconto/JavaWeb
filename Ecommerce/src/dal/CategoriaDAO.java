package dal;

import java.util.ArrayList;

import model.Categoria;
import model.Produto;

public class CategoriaDAO {

	private static ArrayList<Categoria> categorias = new ArrayList<Categoria>();

	public static boolean cadastrarCategoria(Categoria categoria) {
		if (categorias.size() > 0) {
			int id = categorias.get(categorias.size() - 1).getId() + 1;
			categoria.setId(id);
		} else {
			categoria.setId(1);
		}
		if (buscarCategoriaPorNome(categoria) == null) {
			categorias.add(categoria);
			return true;
		}
		return false;
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
