/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

document.getElementById('enviar-correo-btn').addEventListener('click', async () => {
    try {
        // Datos del correo electrónico
        const data = {
            to: 'ampelioplascencia@gmail.com',
            from: 'ampelioplascencia@gmail.com',
            subject: 'Asunto del correo',
            text: 'Contenido del correo electrónico'
        };

        // Opciones de la solicitud
        const options = {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(data)
        };

        // URL del endpoint en tu servidor
        const url = 'https://tu-servidor.com/enviar-correo';

        // Realiza la solicitud HTTP POST en segundo plano
        const response = await fetch(url, options);

        if (response.ok) {
            const responseData = await response.json();
            console.log('Respuesta del servidor:', responseData);
            alert('Correo enviado correctamente');
        } else {
            throw new Error('Error al enviar el correo electrónico');
        }
    } catch (error) {
        console.error('Error al enviar el correo electrónico:', error);
        alert('Error al enviar el correo electrónico');
    }
});


