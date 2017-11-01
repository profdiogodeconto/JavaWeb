<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
<title>Cadastrar Folha de Pagamento</title>
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
		<form class="form-horizontal" action="FolhaDePagamentoServlet"
			method="get">
			<fieldset>
				<legend>Cadastrar Folha de Pagamento</legend>
				<div class="form-group">
					<label class="col-lg-2 control-label">Nome</label>
					<div class="col-lg-10">
						<input type="text" class="form-control"
							placeholder="Nome do Funcionário" name="txtNome">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">CPF</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" data-mask="000.000.000-00" data-mask-reverse="true" placeholder="___.___.___-__"
							name="txtCpf">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">Data</label>
					<div class="col-lg-10">
						<input type="text" class="form-control data"
							placeholder="__/__/____" data-mask="00/00/0000" id="data"
							name="txtData">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">Quantidade de Horas</label>
					<div class="col-lg-10">
						<input type="text" class="form-control"
							placeholder="Quantidade do produto" name="txtQuantidadeHoras">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">Valor da Hora</label>
					<div class="col-lg-10">
						<input type="text" class="form-control"
							placeholder="Valor da Hora" name="txtValorHora">
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-10 col-lg-offset-2">
						<input type="submit" value="Cadastrar" class="btn btn-primary"
							name="btnAcaoFolha" />
					</div>
				</div>
			</fieldset>
		</form>
	</div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript" src="js/jquery.mask.js"></script>
	<%--<script type="text/javascript">
		$(document).ready(function(){
			$('.data').mask('00/00/0000',{
				placeholder: "__/__/____"
			});
		});
	</script>--%>

</body>
</html>








