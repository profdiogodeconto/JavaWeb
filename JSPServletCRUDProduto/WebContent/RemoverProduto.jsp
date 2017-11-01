<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="dal.ProdutoDAO"%>
<%--
	
	Recuperar o ID da URL
	Criar um método no DAO para remover o produto
	Redirecionar para lista

--%>

<%
	int idProduto = Integer.parseInt(request.getParameter("idProduto"));
	if(ProdutoDAO.removerProduto(idProduto)){
		response.sendRedirect("ListarProdutos.jsp?mensagem=1");
	}else{
		response.sendRedirect("ListarProdutos.jsp?mensagem=2");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>






