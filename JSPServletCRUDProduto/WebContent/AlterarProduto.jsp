<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dal.ProdutoDAO"%>
<%@ page import="model.Produto"%>
<%

	int idProduto = Integer.parseInt(request.getParameter("idProduto"));
	Produto produto = ProdutoDAO.buscarProdutoPorId(idProduto);

%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Alterar Produto</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
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
		<form class="form-horizontal" action="ProdutoServlet" method="get">
			<fieldset>
				<legend>Alterar Produto</legend>
				<div class="form-group">
					<label class="col-lg-2 control-label">Nome</label>
					<div class="col-lg-10">
						<input type="text" class="form-control"
							placeholder="Nome do produto" name="txtNome" 
							value="<%= produto.getNome() %>">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">Preço</label>
					<div class="col-lg-10">
						<input type="text" class="form-control"
							placeholder="Preço do produto" name="txtPreco" 
							value="<%= produto.getPreco() %>">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">Quantidade</label>
					<div class="col-lg-10">
						<input type="text" class="form-control"
							placeholder="Quantidade do produto" name="txtQuantidade" 
							value="<%= produto.getQuantidade() %>">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">Categoria</label>
					<div class="col-lg-10">
						<input type="text" class="form-control"
							placeholder="Categoria do produto" name="txtCategoria" 
							value="<%= produto.getCategoria() %>">
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-10 col-lg-offset-2">
						<input type="submit" value="Alterar" class="btn btn-primary"
							name="btnAcaoProduto" />
					</div>
				</div>
				<%--<div class="form-group">
					<label class="<%= classe %>"> <%= mensagem %>
					</label>
				</div> --%>
			</fieldset>
		</form>
	</div>
</body>
</html>