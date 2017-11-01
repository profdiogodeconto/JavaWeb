<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dal.FolhaDePagamentoDAO"%>
<%@ page import="model.FolhaDePagamento"%>
<%@ page import="util.Calculos"%>
<%@ page import="java.util.ArrayList"%>

<%-- Buscar a lista de produtos --%>
<%
	int parametro = Integer.parseInt(request.getParameter("idFolha"));
	FolhaDePagamento folha = FolhaDePagamentoDAO.buscarFolhaDePagamentoPorId(parametro);
	double bruto = Calculos.calcularSalarioBruto(folha.getQuantidadeHoras(), folha.getValorHora());
	double irrf = Calculos.calcularImpostoDeRenda(bruto);
	double inss = Calculos.calcularINSS(bruto);
	double fgts = Calculos.calcularFGTS(bruto);
	double liquido = Calculos.calcularSalarioLiquido(bruto, irrf, inss);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
<title>Consultar Folha de Pagamento</title>
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
				<legend>Consultar Folha de Pagamento</legend>
				<div class="form-group">
					<label class="col-lg-2 control-label">Nome</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" name="txtNome" disabled
							value="<%=folha.getNome()%>">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">CPF</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" name="txtCpf" disabled
							value="<%=folha.getCpf()%>">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">Salário Bruto</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" name="txtSalarioBruto"
							disabled value="<%= String.format("R$ %10.2f", bruto)%>">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">IRRF</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" name="txtIrrf" disabled
							value="<%= String.format("R$ %10.2f",irrf)%>">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">INSS</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" name="txtInss" disabled
							value="<%=String.format("R$ %10.2f",inss)%>">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">FGTS</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" name="txtFgts" disabled
							value="<%=String.format("R$ %10.2f",fgts)%>">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">Salário Líquido</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" name="txtSalarioLiquido"
							disabled value="<%=String.format("R$ %10.2f",liquido)%>">
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-10 col-lg-offset-2">
						<a href="ListarFolhas.jsp" class="btn btn-success"> Voltar </a>
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</body> 
</html>