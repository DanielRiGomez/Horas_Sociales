var crear_actividad = function(){
    window.location.href = 'admin_crearActivHTML.html';
}

var salir = function(){
    window.location.href = 'loginHTML.html';
}


var buttNew = document.getElementById('nueva_activ');
buttNew.addEventListener("click", crear_actividad);

var buttNew = document.getElementById('salir');
buttNew.addEventListener("click", salir);