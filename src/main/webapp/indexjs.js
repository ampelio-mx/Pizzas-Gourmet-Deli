//TOGGLE BUTTON CARGAR UBICACIÓN 
const indicadorCargarMapa = document.getElementById("map-loading-indicator-hide");

function cargarMapa(){
    
     if (indicadorCargarMapa.style.display === "none") {
        indicadorCargarMapa.style.display = "block"; // Mostrar el div
    } else {
        indicadorCargarMapa.style.display = "block"; // Ocultar el div
    }    
    
};
//TOGGLE BUTTON
const toggleButton = document.getElementById("toggleButton");
const datosEnvioCodigoPostal = document.getElementById("datos-envio-mapa");

// Agregar un evento de clic al botón
/*toggleButton.addEventListener("click", function() {
 
 console.log("Clic en el botón");
 if (datosEnvioCodigoPostal.style.display === "none") {
 datosEnvioCodigoPostal.style.display = "block"; // Mostrar el div
 } else {
 datosEnvioCodigoPostal.style.display = "none"; // Ocultar el div
 }
 });*/

function toggle() {

    if (datosEnvioCodigoPostal.style.display === "none") {
        datosEnvioCodigoPostal.style.display = "block"; // Mostrar el div
    } else {
        datosEnvioCodigoPostal.style.display = "block"; // Ocultar el div
    }

}
;

var latitud;
var longitud;
let map;
let marker;
let autocomplete;
let calle = "";
let numeroCasa = "";
let colonia = "";
let delegacion = ""; 
let ciudad = "";
let codigoPostal;


function obtenerUbicacion() {
            // Verificar si el navegador soporta geolocalización
            if ("geolocation" in navigator) {
                // Mostrar un mensaje al usuario solicitando permiso para acceder a su ubicación
                navigator.permissions.query({ name: 'geolocation' }).then(function(permissionStatus) {
                    // Verificar el estado del permiso
                    if (permissionStatus.state === 'granted') {
                        // El permiso ya ha sido concedido, obtener la ubicación
                        obtenerCoordenadas();
                        console.log("Permiso para ubicación aceptado");
                    } else {
                        // Mostrar un mensaje al usuario solicitando permiso para acceder a su ubicación
                        permissionStatus.onchange = function() {
                            if (this.state === 'granted') {
                                // Permiso concedido, obtener la ubicación
                                obtenerCoordenadas();
                            } else {
                                // Permiso denegado
                                console.log('El usuario ha denegado la solicitud de geolocalización.');
                            }
                        };
                        // Solicitar permiso al usuario para acceder a su ubicación
                        navigator.geolocation.getCurrentPosition(function() {}, function() {});
                    }
                });
            } else {
                console.log("Geolocalización no está soportada por este navegador.");
            }
        }

  document.getElementById("btn-geolocalizar").addEventListener("click", obtenerUbicacion);
  
//OBTENER COORDENADAS
function obtenerCoordenadas() {
   
    
        navigator.geolocation.getCurrentPosition(function (position) {
            latitud = position.coords.latitude;
            longitud = position.coords.longitude;
            initMap(latitud, longitud);
            // Llamar a la función para obtener el código postal
            obtenerCodigoPostal(latitud, longitud);
        },function(error) {
                    // Manejar errores de geolocalización
                    switch(error.code) {
                        case error.PERMISSION_DENIED:
                            console.log("El usuario denegó la solicitud de geolocalización.");
                            break;
                        case error.POSITION_UNAVAILABLE:
                            console.log("La información de ubicación no está disponible.");
                            break;
                        case error.TIMEOUT:
                            console.log("La solicitud para obtener la ubicación del usuario ha caducado.");
                            break;
                        case error.UNKNOWN_ERROR:
                            console.log("Ocurrió un error desconocido al obtener la ubicación del usuario.");
                            break;
                            
                    }
                });
            
    }





function obtenerCodigoPostal(latitud, longitud) {
    // Crear un objeto geocoder
    var geocoder = new google.maps.Geocoder();

    // Crear un objeto LatLng
    var latlng = new google.maps.LatLng(latitud, longitud);

    // Realizar la solicitud de geocodificación inversa
    geocoder.geocode({'location': latlng}, function (results, status) {
        if (status === google.maps.GeocoderStatus.OK) {
            if (results[0]) {
                // Iterar sobre los componentes de la dirección para obtener los detalles de la dirección
                for (var i = 0; i < results[0].address_components.length; i++) {
                    var addressType = results[0].address_components[i].types[0];
                    switch (addressType) {
                        case "route":
                            calle = results[0].address_components[i].long_name;
                            break;
                        case "street_number":
                            numeroCasa = results[0].address_components[i].long_name;
                            break;
                        case "sublocality_level_1":
                            colonia = results[0].address_components[i].long_name;
                            break;
                        case "administrative_area_level_2":
                            delegacion = results[0].address_components[i].long_name;
                            break;
                        case "locality":
                            ciudad = results[0].address_components[i].long_name;
                            break;
                        case "postal_code":
                            codigoPostal = results[0].address_components[i].long_name;
                            // Aquí puedes hacer lo que necesites con el código postal
                            console.log("Código Postal usar ubicación:", codigoPostal);
                            // Por ejemplo, enviar el código postal a otra función
                            break;
                    }
                }
                
                // Aquí puedes usar los valores recuperados según sea necesario
                console.log("Calle:", calle);
                console.log("Número:", numeroCasa);
                console.log("Colonia:", colonia);
                console.log("Delegación:", delegacion);
                console.log("Ciudad:", ciudad);
                console.log("Código Postal:", codigoPostal);
            } else {
                console.log('No se encontraron resultados de geocodificación inversa');
            }
        } else {
            console.log('Geocodificación inversa falló debido a: ' + status);
        }
        
     
      
    });
}


//INICIAR MAPA
function initMap(latitud, longitud) {
    
    console.log(latitud);
    console.log(longitud);
    
    const argCords = {lat: latitud, lng: longitud};
    map = new google.maps.Map(document.getElementById("map"), {
        center: argCords,
        zoom: 18.0,
    });
    marker = new google.maps.Marker({
        position: argCords,
        map: map,
    });
    
    // Evento para detectar cuando todas las baldosas del mapa se han cargado
    google.maps.event.addListenerOnce(map, 'tilesloaded', function() {
        // Ocultar el spinner cuando el mapa se ha cargado completamente
        document.getElementById("map-loading-indicator-hide").style.display = "none";
    });
    
    initAutoComplete();

}

initMap();

/*
 
 //OBTENER CADENA CON LA DIRECCIÓN
 function obtenerDireccion(latitud, longitud) {
 var geocoder = new google.maps.Geocoder();
 var latlng = new google.maps.LatLng(latitud, longitud);
 
 geocoder.geocode({'location': latlng}, function (results, status) {
 if (status === google.maps.GeocoderStatus.OK) {
 if (results[0]) {
 var direccion = results[0].formatted_address;
 console.log('La dirección es: ' + direccion);
 // Aquí puedes hacer lo que quieras con la dirección, como mostrarla en tu página web
 } else {
 console.log('No se encontraron resultados para estas coordenadas.');
 }
 } else {
 console.log('Geocodificación inversa falló debido a: ' + status);
 }
 });
 }*/


//FUNCIÓN DE AUTOCOMPLETADO 

function initAutoComplete() {
    const campoTextoMapa = document.getElementById("campo-texto-mapa");
    autocomplete = new google.maps.places.Autocomplete(campoTextoMapa);
    autocomplete.addListener('place_changed', function () {
        const place = autocomplete.getPlace();
        console.log(place);

     

        for (const component of place.address_components) {
            for (const type of component.types) {
                switch (type) {
                    case "postal_code":
                        codigoPostal = component.long_name;
                        break;
                    case "route":
                        calle = component.long_name;
                        break;
                    case "street_number":
                        numero = component.long_name;
                        break;
                    case "sublocality_level_1":
                        colonia = component.long_name;
                        break;
                    case "administrative_area_level_2":
                        delegacion = component.long_name; 
                        break;
                     case "administrative_area_level_1":
                        ciudad = component.long_name;
                        break;
                    // Puedes agregar otros tipos según sea necesario para tu aplicación
                }
            }
        }

        // Aquí puedes usar los valores recuperados según sea necesario
        console.log("Calle:", calle);
        console.log("Número:", numero);
        console.log("Colonia:", colonia);
        console.log("Delegación:", delegacion);
        console.log("Código Postal autocomplete:", codigoPostal);
        console.log("Ciudad:", ciudad);

        // Resto del código
	
        map.setCenter(place.geometry.location);
        marker.setPosition(place.geometry.location);
        
        
    });
}


//ENVIAR UBICACIÓN AL SERVIDOR POR MEDIO DEL MÉTODO FETCH
function enviarCodigoPostal() {

    console.log("calle enviada" + calle);
    console.log("número casa enviado" + numeroCasa);
    console.log("colonia enviada" + colonia);    
    console.log("delegación enviada" + delegacion);
    console.log("ciudad enviada" + ciudad);
    console.log("Código postal enviado" + codigoPostal);
    


    var datos = {
        calleservidor: calle,
        numerocasaservidor: numeroCasa,
        coloniaservidor: colonia,
        delegacionservidor: delegacion, 
        ciudadservidor: ciudad,
        codigopostalservidor: codigoPostal
    };

    fetch('/ControladorGeolocalizacion', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(datos)

    })
            .then(response => {
                if (response.ok) {
                    return response.json();
                } else {
                    throw new Error('La solicitud no fue exitosa');
                }
            })
            .then(data => {

                const codpostal = data.cp;
                console.log("Código postal devuelo por BD: " + codpostal);

                if (codpostal === 0) {
                    alert("El domicilio proporcionado se encuentra fuera del \u00E1rea de cobertura");
                    window.location.href = "vistas/delivery_redireccion.jsp"; // Redirige a index.jsp si el código postal es igual a cero
                } else {
                    window.location.href = "../ControladorProductosListar"; // Redirige a la página de inicio si el código postal es diferente de cero
                }

            })
            .catch(error => {
                console.error('Error al realizar la solicitud:', error);
            });

}



