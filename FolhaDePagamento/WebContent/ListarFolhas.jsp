<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dal.FolhaDePagamentoDAO"%>
<%@ page import="model.FolhaDePagamento"%>
<%@ page import="java.util.ArrayList"%>

<%-- Buscar a lista de produtos --%>
<%
	ArrayList<FolhaDePagamento> folhas = FolhaDePagamentoDAO.retornarLista();
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
			<a href="#" class="navbar-brand">Folha de Pagamento</a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="CadastrarFolhaDePagamento.jsp">Cadastrar</a></li>
				<li><a href="ListarFolhas.jsp">Listar</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="container">
		<fieldset>
			<legend>Listar Folhas</legend>
			<table class="table table-hover table-striped">
				<tr>
					<th>Id</th>
					<th>Nome</th>
					<th>CPF</th>
					<th>Data</th>
					<th>Horas</th>
					<th>Valor</th>
					<th>Consultar</th>
				</tr>
				<%
					for (FolhaDePagamento folhaCadastrada : folhas) {
				%>
				<tr>
					<td><%=folhaCadastrada.getId()%></td>
					<td><%=folhaCadastrada.getNome()%></td>
					<td><%=folhaCadastrada.getCpf()%></td>
					<td><%=folhaCadastrada.getData()%></td>
					<td><%=folhaCadastrada.getQuantidadeHoras()%></td>
					<td><%=String.format("R$ %10.2f",folhaCadastrada.getValorHora())%></td>
					<td><a
						href="ConsultarFolha.jsp?idFolha=<%=folhaCadastrada.getId()%>"
						class="btn btn-info">Consultar</a></td>
				</tr>
				<%
					}
				%>
			</table>

		</fieldset>
	</div>
</body>
</html>










