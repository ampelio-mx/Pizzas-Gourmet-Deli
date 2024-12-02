


function botonRappi() {

    let envio = "rappi";
    let envioRappi = "rappi";
    let insertarEnviorappi = "Redireccionado a la página de Rappi";

    var datos = {
        
        tipoEnvio: envio,
        envioRappiVarFetch: envioRappi,
        insertarEnviorappiVarFetch: insertarEnviorappi

    };

    fetch('/ControladorDeliveryRedireccion', {
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

                 const dataRappi = data.dataRappi;
                console.log("Data Rappi: " + dataRappi);

                window.location.href = "https://www.rappi.com.mx/restaurantes/1930040800-pizza-gourmet-deli";


            })
            .catch(error => {
                console.error('Error al realizar la solicitud:', error);
            });

}


function botonUberEats() {
    
    let envio = "uberEats";
    let envioUberEats = "uberEats";
    let insertarEnvioUberEats = "Redireccionado a la página de Uber Eats";

    var datos = {
        
        tipoEnvio: envio,
        envioUberEatdsVarFetch: envioUberEats,
        insertarEnvioUberEatsVarFetch: insertarEnvioUberEats

    };

    fetch('/ControladorDeliveryRedireccion', {
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

                const dataUberEats = data.dataUberEats;
                console.log("Data Uber Eats: " + dataUberEats);

                window.location.href = "https://www.didi-food.com/es-MX/food/";


            })
            .catch(error => {
                console.error('Error al realizar la solicitud:', error);
            });


    
}

