<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
<title>Cadastrar Conta a Pagar ou Receber</title>
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
		<form class="form-horizontal" action="ContaServlet"
			method="get">
			<fieldset>
				<legend>Cadastrar Contas a Pagar ou Receber</legend>
				<div class="form-group">
					<label class="col-lg-2 control-label">Descricao</label>
					<div class="col-lg-10">
						<input type="text" class="form-control"
							placeholder="Descrição da conta" name="txtDescricao">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">Vencimento</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" placeholder="Vencimento da conta"
							name="txtVencimento">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">Valor</label>
					<div class="col-lg-10">
						<input type="text" class="form-control data"
							placeholder="Valor da conta"
							name="txtValor">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">Categoria</label>
					<div class="col-lg-10">
						<input type="text" class="form-control"
							placeholder="Ex.: Água, Luz, Alimentação e etc..." name="txtCategoria">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">Tipo da Conta</label>
					<div class="col-lg-10">
						<input type="text" class="form-control"
							placeholder="PAGAR ou RECEBER" name="txtTipo">
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-10 col-lg-offset-2">
						<input type="submit" value="Cadastrar" class="btn btn-primary"
							name="btnAcaoConta" />
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</body>
</html>








