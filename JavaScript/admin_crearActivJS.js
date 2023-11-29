var crear_actividad = function(){
    window.location.href = 'admin_actividadesHTML.html';
}

var salir = function(){
    window.location.href = 'loginHTML.html';
}

var lista_actividades = function () {
    window.location.href = 'admin_actividadesHTML.html';
}

var buttNew = document.getElementById('actividades');
buttNew.addEventListener("click", crear_actividad);

var buttNew = document.getElementById('crear_activ');
buttNew.addEventListener("click", crear_actividad);

var buttNew = document.getElementById('salir');
buttNew.addEventListener("click", salir);