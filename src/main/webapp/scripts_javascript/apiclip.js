
function mensajeConfirmarPedido(){
    
    alert("Favor de confirmar tu pedido por medio de whatsapp");
    
}

//GUARDAR DATOS Y MOSTRAR BOTON CLIP

let importeTotal = document.getElementById("importe-pagar").innerHTML;
let usuarioPedido = document.getElementById("nombre-cliente-compra").textContent;
console.log("Nombre del cliente: " + usuarioPedido);

const optionspost = {
    method: 'POST',
    headers: {
        accept: 'application/vnd.com.payclip.v2+json',
        'content-type': 'application/json',
        'x-api-key': 'Basic OWFjMzE4NjctN2Y3ZC00ZjllLWFhM2YtOGExZjQ5NWM4MzQ1OjdiMmYxMTVhLTE1NWYtNDcyMy05ZWEwLTljNThkZmZiNDkxZg=='
    },
    body: JSON.stringify({
        amount: parseFloat(importeTotal),
        currency: 'MXN',
        purchase_description: 'Pizzas Gourmet Deli. Cliente: ' + usuarioPedido,
        redirection_url: {
            success: 'http://localhost:8080/pizzasgourmetdeli/vistas/finalizarsesion.jsp',
            error: 'https://my-website.com/redirection/error?me_reference_id=OID123456789',
            default: 'https://my-website.com/redirection/default'
        }
    })
};


function solicitarPago() {

    fetch('https://api-gw.payclip.com/checkout', optionspost)


            .then(response => response.json())

            .then(data => {
                // Usar los datos obtenidos
                console.log("data devuelta por el servidor: " + data);
                console.log("data link de pago: " + data.payment_request_url);
                console.log("data qr para el pago: " + data.qr_image_url);
                console.log("data url redirección: " + data.redirection_url);
                console.log("data status transacción: " + data.status);


                window.location.href = data.payment_request_url;
                //document.getElementById("mostrar-link-pago").innerHTML = "Link de pago: " + "<a href='" + data.payment_request_url + "' target='_blank'>Enlace de pago</a>";

                // Obtener la referencia al elemento contenedor donde quieres agregar la imagen
                var mostrarQRContainer = document.getElementById("mostrar-qr");

// Crear un nuevo elemento de imagen
                var qrImg = document.createElement("img");

// Establecer el atributo src de la imagen
                qrImg.src = data.qr_image_url;

// Establecer el atributo alt de la imagen
                qrImg.alt = "QR para el pago";

// Establecer el ancho y el alto de la imagen
                qrImg.style.width = "35vh"; // Por ejemplo, 200 píxeles de ancho
                qrImg.style.height = "35vh"; // Por ejemplo, 200 píxeles de alto

// Agregar la imagen al contenedor
                mostrarQRContainer.innerHTML = "";
                mostrarQRContainer.appendChild(qrImg);




                // Llamas a la función para obtener el estado del pago
                const paymentRequestId = data.payment_request_id;
                //obtenerEstadoPago(paymentRequestId);


            })
            .catch(err => console.error(err));
}


/*
const optionsget = {
    method: 'GET',
    headers: {
        accept: 'application/vnd.com.payclip.v2+json',
        'x-api-key': 'Basic OWFjMzE4NjctN2Y3ZC00ZjllLWFhM2YtOGExZjQ5NWM4MzQ1OjdiMmYxMTVhLTE1NWYtNDcyMy05ZWEwLTljNThkZmZiNDkxZg=='
    }
};


function obtenerEstadoPago(paymentRequestId) {

    fetch(`https://api-gw.payclip.com/checkout/${paymentRequestId}`, optionsget)
            .then(response => response.json())
            .then(data => {
                // Aquí puedes manejar el estado del pago
                console.log('Estado del pago:', data.status);
                console.log('Fecha de creación:', data.created_at);

                if (data.status === 'CHECKOUT_COMPLETED') {
                    console.log('Estado del pago:', data.status);
                    guardarPedido()


                            .then(() => {
                                if (data.redirection_url && data.redirection_url.success) {
                                    data.redirection_url.success = "http://localhost:8080/pizzasgourmetdeli";
                                    const redirectionUrl = data.redirection_url.success;
                                    window.location.href = redirectionUrl;

                                } else {
                                    console.error('La propiedad "success" no está presente en la URL de redirección.');
                                }
                            })
                            .catch(error => {
                                console.error('Error al guardar el pedido:', error);
                            });

                } else {
                    // Si el estado no es final, puedes volver a realizar la solicitud después de un tiempo para verificar el estado actualizado
                    setTimeout(() => {
                        obtenerEstadoPago(paymentRequestId);
                        console.log('Estado del pago:', data.status);
                    }, 5000); // Realizar la solicitud cada 5 segundos (puedes ajustar este valor según tus necesidades)
                }
            })
            .catch(error => {
                console.error('Error al obtener el estado del pago:', error);
            });
}*/
