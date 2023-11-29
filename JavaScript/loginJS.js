// var login = function(){
//     window.location.href = 'admin_actividadesHTML.html';
// }

var login = function() {
	var formulario = document.getElementById('formulario');

	formulario.addEventListener('submit', function(e){
		e.preventDefault();
	})
	var dataForm = new FormData(formulario);

	fetch('../PHP/loginPHP.php', {
		method: 'POST',
		body: JSON.stringify({"nombre":"daniel", "pass":"123"})
	})
	.then( respuesta => respuesta.json())
		.then(datos => {
		if (datos) {
			window.location.href = 'admin_actividadesHTML.html';
		}else {
			document.getElementById("mensaje_error").setAttribute("class","visible");
		}
	})
}

var buttLogin = document.getElementById('ingresar');
buttLogin.addEventListener("click", login);
