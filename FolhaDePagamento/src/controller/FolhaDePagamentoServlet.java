package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dal.FolhaDePagamentoDAO;
import model.Conta;

/**
 * Servlet implementation class FolhaDePagamentoServlet
 */
@WebServlet("/FolhaDePagamentoServlet")
public class FolhaDePagamentoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Conta folha = new Conta();
		folha.setNome(request.getParameter("txtNome"));
		folha.setCpf(request.getParameter("txtCpf"));
		folha.setData(request.getParameter("txtData"));
		folha.setQuantidadeHoras(Integer.parseInt(request.getParameter("txtQuantidadeHoras")));
		folha.setValorHora(Double.parseDouble(request.getParameter("txtValorHora")));
		FolhaDePagamentoDAO.cadastrarFolhaDePagamento(folha);
		response.sendRedirect("ListarFolhas.jsp");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
