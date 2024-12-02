


let map;
let marker;
let autocomplete;
let codigoPostal;



//INICIAR MAPA
function initMap() {
    
   var latitud = 19.4019821;
    var longitud = -99.1166553;
    
    const argCords = {lat: latitud, lng: longitud};
    map = new google.maps.Map(document.getElementById("mapa"), {
        center: argCords,
        zoom: 17.0,
    });
    marker = new google.maps.Marker({
        position: argCords,
        map: map,
    });
    
    var latitud2 = 19.400662;
    var longitud2 = -99.134179;
    const argCords2 = {lat: latitud2, lng: longitud2};
    var map2 = new google.maps.Map(document.getElementById("mapados"), {
        center: argCords2,
        zoom: 17.0,
    });
    var marker2 = new google.maps.Marker({
        position: argCords2,
        map: map2,
    });

}

initMap();




