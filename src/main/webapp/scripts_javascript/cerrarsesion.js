
//GUARDAR DATOS Y MOSTRAR BOTON CLIP
function guardarPedido() {


    let solicitudGuardarPedido = "actualizarfk";

    var datos = {

        guardarPedido: solicitudGuardarPedido
    };


    fetch('/pizzasgourmetdeli/ControladorGuardarPedido', {
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

                const mensajeConfirmacion = data.mensajerespuesta;
                console.log("Confirmación: " + mensajeConfirmacion);

                const pedidos = data.pedidos;
                let mensajeWhatsApp = "Lista de pedidos:\n";
                pedidos.forEach(pedido => {
                    const nombreProducto = pedido.nombreProducto;
                    const cantidadProductos = pedido.cantidadProductos;
                    const tamanioProducto = pedido.tamanioProducto;
                    const entregaProducto = pedido.entregaProducto;

                    mensajeWhatsApp += `Producto: ${nombreProducto}, Cantidad: ${cantidadProductos}, Tamaño: ${tamanioProducto}, Entrega: ${entregaProducto}\n`;
                });

                // Construir la URL de WhatsApp con el mensaje
                const telefonoWhatsApp = "525584586043"; // Coloca el número de teléfono de destino
                const urlWhatsApp = `https://wa.me/${telefonoWhatsApp}?text=${encodeURIComponent(mensajeWhatsApp)}`;

                // Redirigir o abrir una nueva ventana del navegador con la URL de WhatsApp
                window.location.href = urlWhatsApp; // Redirigir en la misma ventana
                // window.open(urlWhatsApp); // Abrir en una nueva ventana

            })
            .catch(error => {
                console.error('Error al realizar la solicitud:', error);
            });


}


window.addEventListener("DOMContentLoaded", function (event) {

    guardarPedido();

});


