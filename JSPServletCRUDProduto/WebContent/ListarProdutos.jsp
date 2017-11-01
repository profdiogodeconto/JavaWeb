<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dal.ProdutoDAO"%>
<%@ page import="model.Produto"%>
<%@ page import="java.util.ArrayList"%>

<%-- Buscar a lista de produtos --%>
<%
	ArrayList<Produto> produtos = ProdutoDAO.listarProdutos();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
<title>Listar Produtos</title>
</head>
<body>

	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a href="#" class="navbar-brand">JSP e Servlet</a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="CadastrarProduto.jsp">Cadastrar</a></li>
				<li><a href="ListarProdutos.jsp">Listar</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="container">
		<fieldset>
			<legend>Listar Produtos</legend>
			<table class="table table-hover table-striped">
				<tr>
					<th>Id</th>
					<th>Nome</th>
					<th>Preço</th>
					<th>Quantidade</th>
					<th>Categoria</th>
					<th colspan="2" style="text-align: center">Ações</th>
				</tr>
				<%
					for (Produto produtoCadastrado : produtos) {
				%>
				<tr>
					<td><%=produtoCadastrado.getId()%></td>
					<td><%=produtoCadastrado.getNome()%></td>
					<td><%=produtoCadastrado.getPreco()%></td>
					<td><%=produtoCadastrado.getQuantidade()%></td>
					<td><%=produtoCadastrado.getCategoria()%></td>
					<td style="text-align:center"><a
						href="RemoverProduto.jsp?idProduto=<%=produtoCadastrado.getId()%>"
						class="btn btn-danger">Remover</a></td>
					<td style="text-align:center"><a
						href="AlterarProduto.jsp?idProduto=<%=produtoCadastrado.getId()%>"
						class="btn btn-warning">Alterar</a></td>
				</tr>
				<%
					}
				%>
			</table>

		</fieldset>
	</div>
</body>
</html>










