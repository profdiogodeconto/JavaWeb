<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dal.ContaDAO"%>
<%@ page import="model.Conta"%>

<%
	int idConta = Integer.parseInt(request.getParameter("idConta"));
	Conta conta = ContaDAO.buscarContaPorId(idConta);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
<title>Consultar Conta</title>
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
		<form class="form-horizontal">
			<fieldset>
				<legend>Consultar Conta</legend>
				<div class="form-group">
					<label class="col-lg-2 control-label">Descrição</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" name="txtDescricao" disabled
							value="<%=conta.getDescricao()%>">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">Vencimento</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" name="txtVencimento" disabled
							value="<%=conta.getVencimento()%>">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">Valor</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" name="txtValor"
							disabled value="<%= conta.getValor() %>">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">Categoria</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" name="txtCategoria" disabled
							value="<%= conta.getCategoria() %>">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">Tipo</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" name="txtTipo" disabled
							value="<%= conta.getTipo() %>">
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-10 col-lg-offset-2">
						<a href="ListarContas.jsp" class="btn btn-success"> Voltar </a>
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</body> 
</html>