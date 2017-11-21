package controller;

import java.util.ArrayList;

import javax.faces.bean.ManagedBean;

import dal.CategoriaDAO;
import model.Categoria;

@ManagedBean(name = "mCategoriaBean")
public class MCategoriaBean {
	
	private Categoria categoria = new Categoria();
	private ArrayList<Categoria> categorias = new ArrayList<Categoria>();
	
	public ArrayList<Categoria> getCategorias() {
		return CategoriaDAO.listarCategorias();
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}
	
	public String adicionarCategoria(Categoria c){
		CategoriaDAO.cadastrarCategoria(c);
		categoria = new Categoria();
		return "CadastrarProduto.xhtml?faces-redirect=true";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
