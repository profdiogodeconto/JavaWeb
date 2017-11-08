<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dal.ContaDAO"%>
<%@ page import="model.Conta"%>
<%@ page import="util.Calculos"%>
<%@ page import="java.util.ArrayList"%>

<%-- Buscar a lista de produtos --%>
<%
	String filtro = request.getParameter("Filtro");
	ArrayList<Conta> contas = ContaDAO.retornarLista();
	double totalReceber = 0;
	double totalPagar = 0;
	if (filtro == null) {
		contas = ContaDAO.retornarLista();
		totalReceber = Calculos.totalizarContasReceber();
		totalPagar = Calculos.totalizarContasPagar();
	} else {
		if (filtro.equals("RECEBER")) {
			contas = ContaDAO.filtrarListaPorContaReceber();
			totalReceber = Calculos.totalizarContasReceber();
		} else {
			contas = ContaDAO.filtrarListaPorContaPagar();
			totalPagar = Calculos.totalizarContasPagar();
		}
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
<title>Listar Folhas</title>
</head>
<body> 
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a href="#" class="navbar-brand">Contas</a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="CadastrarConta.jsp">Cadastrar</a></li>
				<li><a href="ListarContas.jsp">Listar</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="container">
		<p>&nbsp;</p>
		<a href="ListarContas.jsp?Filtro=RECEBER" class="btn btn-info">Receber</a>
		<a href="ListarContas.jsp?Filtro=PAGAR" class="btn btn-info">Pagar</a>
		<a href="ListarContas.jsp?" class="btn btn-info">Todas</a>
		<p>&nbsp;</p>

		<fieldset>
			<legend>Listar Contas</legend>
			<table class="table table-hover table-striped">
				<tr>
					<th>Id</th>
					<th>Descrição</th>
					<th>Tipo</th>
					<th>Consultar</th>
				</tr>
				<%
					for (Conta contaCadastrada : contas) {
				%>
				<tr>
					<td><%=contaCadastrada.getId()%></td>
					<td><%=contaCadastrada.getDescricao()%></td>
					<td><%=contaCadastrada.getTipo()%></td>
					<td><a
						href="ConsultarConta.jsp?idConta=<%=contaCadastrada.getId()%>"
						class="btn btn-info">Consultar</a></td>
				</tr>
				<%
					}
				%>
			</table>
			<p>&nbsp;</p>
			<h4 class="text-success">Receber: R$<%= totalReceber %></a><br>
			<h4 class="text-danger">Pagar: R$<%= totalPagar %></a>
			<p>&nbsp;</p>

		</fieldset>
	</div>
</body>
</html>










