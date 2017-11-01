$(document).ready(function() {
	/* Mensagem de alerta no navegador */
	/* alert("Hello World Jquery!"); */

	//Selecionando um elemento HTML	
//	$("body").click(function() {
//		alert("Cliquei no BODY!");
//	});
	//Selecionando um elemento com ID
	$("#divTitulos").click(function(){
		alert("Cliquei em um elemento com ID");
	});
	//Selecionando um elemento pela classe
	$(".alerta").click(function(){
		alert("Cliquei em um elemento com classe");
	});
	$("#divTitulos").mouseenter(function(){
		$("#divTitulos").fadeTo('slow', 0.2);
	});
	$("#divTitulos").mouseleave(function(){
		$("#divTitulos").fadeTo('slow', 1);
	});
	$(".alerta").mouseenter(function(){
		$(this).css("color","#DEF123");
		$(this).css("background-color","#ABC987");		
	});
	$("#btnCalcular").click(function(){
		if($("#txtNumero1").val() == "" || $("#txtNumero2").val() == ""){
			alert("Campos em branco");
		}
	});

})











