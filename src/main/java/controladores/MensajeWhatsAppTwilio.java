/*package controladores;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;




public class MensajeWhatsAppTwilio {

    // Credenciales de Twilio
    public static final String ACCOUNT_SID = "AC1d37c5e9474eb9a5859a2904ee4d4335";
    public static final String AUTH_TOKEN = "889b8a0255d6daeaa44d7d74cc39e623";
    public static final String NUMERO_DE_TWILIO = "+525584586043";
    public static final String NUMERO_DESTINO = "+525517988750";

    // Método para enviar el mensaje de WhatsApp
    public static void enviarMensajePedido() {
     
            Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

            // Envía el mensaje usando la API de Twilio
            Message message = Message
                    .creator(
                    new com.twilio.type.PhoneNumber(NUMERO_DESTINO),
                    new com.twilio.type.PhoneNumber(NUMERO_DE_TWILIO),
                    " Mensaje desde Twilio")
                    .create();
            
            System.out.println(message.getSid());
            
     
    }

}
*/