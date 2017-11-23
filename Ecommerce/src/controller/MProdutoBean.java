package controller;

import java.util.ArrayList;

import javax.faces.bean.ManagedBean;

import dal.CategoriaDAO;
import dal.ProdutoDAO;
import model.Categoria;
import model.Produto;

@ManagedBean(name = "mProdutoBean")
public class MProdutoBean {

	private Produto produto = new Produto();
	private ArrayList<Produto> produtos = new ArrayList<Produto>();
	private int idCategoria;

	public int getIdCategoria() {
		return idCategoria;
	}

	public void setIdCategoria(int idCategoria) {
		this.idCategoria = idCategoria;
	}

	public ArrayList<Produto> getProdutos() {
		return ProdutoDAO.listarProdutos();
	}

	public Produto getProduto() {
		return produto;
	}

	public void setProduto(Produto produto) {
		this.produto = produto;
	}

	// Action
	public String adicionarProduto(Produto p) {
		Categoria c = CategoriaDAO.buscarCategoriaPorId(idCategoria);
		p.setCategoria(c);
		ProdutoDAO.cadastrarProduto(p);
		produto = new Produto();
		return "ListarProdutos.xhtml?faces-redirect=true";
	}
	
	public String removerProduto(Produto p){
		ProdutoDAO.removerProduto(p);
		return "ListarProdutos.xhtml?faces-redirect=true";
	}

}

// Criar a anotação do ManagedBean
// Importar do pacote javax.faces.*
// Criar atributo do modelo
// Criar os getters and setters do atributo
// Criar a Action







