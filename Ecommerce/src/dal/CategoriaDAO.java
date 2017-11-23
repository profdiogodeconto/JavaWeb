package dal;

import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import model.Categoria;
import model.Produto;

public class CategoriaDAO {

	public static boolean cadastrarCategoria(Categoria categoria) {
		EntityManager em = Conexao.getEntityManager();
		em.getTransaction().begin();
		em.persist(categoria);
		em.getTransaction().commit();
		em.close();
		return true;
	}

	public static ArrayList<Categoria> listarCategorias() {
		EntityManager em = Conexao.getEntityManager();
		Query q = em.createQuery("SELECT c FROM Categoria c");
		ArrayList<Categoria> categoriasBanco = 
				(ArrayList<Categoria>) q.getResultList();
		em.close();
		return categoriasBanco;
	}

	public static Categoria buscarCategoriaPorNome(Categoria categoria) {
		EntityManager em = Conexao.getEntityManager();
		Query q = 
				em.createQuery
				("SELECT c FROM Categoria c WHERE c.nome = :nomeCategoria");
		
		q.setParameter("nomeCategoria", categoria.getNome());
		
		ArrayList<Categoria> categoriasBanco = (ArrayList<Categoria>) q.getResultList();
		em.close();
		
		return categoriasBanco.get(0);
	}

	public static Categoria buscarCategoriaPorId(int idCategoria) {
		EntityManager em = Conexao.getEntityManager();
		Categoria c = em.find(Categoria.class, idCategoria);
		em.close();
		return c;
	}
}











