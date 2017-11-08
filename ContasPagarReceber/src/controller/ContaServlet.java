package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dal.ContaDAO;
import model.Conta;

@WebServlet("/ContaServlet")
public class ContaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Conta conta = new Conta();
		conta.setDescricao(request.getParameter("txtDescricao"));
		conta.setVencimento(request.getParameter("txtVencimento"));
		conta.setValor(Double.parseDouble(request.getParameter("txtValor")));
		conta.setCategoria(request.getParameter("txtCategoria"));
		conta.setTipo(request.getParameter("txtTipo"));
		ContaDAO.cadastrarConta(conta);
		response.sendRedirect("ListarContas.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
