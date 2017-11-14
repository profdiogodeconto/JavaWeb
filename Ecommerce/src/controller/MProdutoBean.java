package controller;

import javax.faces.bean.ManagedBean;

import dal.ProdutoDAO;
import model.Produto;

@ManagedBean(name = "mProdutoBean")
public class MProdutoBean {
	
	private Produto produto = new Produto();

	public Produto getProduto() {
		return produto;
	}

	public void setProduto(Produto produto) {
		this.produto = produto;
	}	

	//Action
	public String adicionarProduto(Produto p){
		ProdutoDAO.cadastrarProduto(p);
		return "ListarProdutos.xhtml";
	}
	

}

//Criar a anotação do ManagedBean
//Importar do pacote javax.faces.*
//Criar atributo do modelo
//Criar os getters and setters do atributo






















