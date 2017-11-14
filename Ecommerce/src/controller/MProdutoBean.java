package controller;

import java.util.ArrayList;

import javax.faces.bean.ManagedBean;

import dal.ProdutoDAO;
import model.Produto;

@ManagedBean(name = "mProdutoBean")
public class MProdutoBean {

	private Produto produto = new Produto();
	private ArrayList<Produto> produtos = new ArrayList<Produto>();

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
		ProdutoDAO.cadastrarProduto(p);
		return "ListarProdutos.xhtml?faces-redirect=true";
	}

}

// Criar a anotação do ManagedBean
// Importar do pacote javax.faces.*
// Criar atributo do modelo
// Criar os getters and setters do atributo
// Criar a Action
