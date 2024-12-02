
package dominio;

import java.util.Date;


public class EntidadPedidos {
    
    int idPedidos;
    String idSession;
    String nombreProductoPedidos;
    int cantidadPedidos;
    String tamanoPedidos;
    double costoIndividual;
    double importePedidos;
    String idCliente;
    Date fechaPedido;
    String formaEntrega;

    public EntidadPedidos() {
    }

    public EntidadPedidos(int idPedidos) {
        this.idPedidos = idPedidos;
    }

    public EntidadPedidos(String idSession) {
        this.idSession = idSession;
    }
    
    
    public EntidadPedidos(String idSession, String nombreProductoPedidos, int cantidadPedidos, String tamanoPedidos, double costoIndividual, double importePedidos) {
        this.idSession = idSession;
        this.nombreProductoPedidos = nombreProductoPedidos;
        this.cantidadPedidos = cantidadPedidos;
        this.tamanoPedidos = tamanoPedidos;
        this.costoIndividual = costoIndividual;
        this.importePedidos = importePedidos;
    }  
    
    public EntidadPedidos(int idPedidos, String idSession, String nombreProductoPedidos, int cantidadPedidos, String tamanoPedidos, double costoIndividual, double importePedidos) {
        this.idPedidos = idPedidos;
        this.idSession = idSession;
        this.nombreProductoPedidos = nombreProductoPedidos;
        this.cantidadPedidos = cantidadPedidos;
        this.tamanoPedidos = tamanoPedidos;
        this.costoIndividual = costoIndividual;
        this.importePedidos = importePedidos;
    }  

    public EntidadPedidos(int idPedidos, String idSession, String nombreProductoPedidos, int cantidadPedidos, String tamanoPedidos, double costoIndividual, double importePedidos, String idCliente, Date fechaPedido, String formaEntrega) {
        this.idPedidos = idPedidos;
        this.idSession = idSession;
        this.nombreProductoPedidos = nombreProductoPedidos;
        this.cantidadPedidos = cantidadPedidos;
        this.tamanoPedidos = tamanoPedidos;
        this.costoIndividual = costoIndividual;
        this.importePedidos = importePedidos;
        this.idCliente = idCliente;
        this.fechaPedido = fechaPedido;
        this.formaEntrega = formaEntrega;
        
    }

    public EntidadPedidos(String nombreProductoPedidos, int cantidadPedidos, String tamanoPedidos, String formaEntrega) {
        this.nombreProductoPedidos = nombreProductoPedidos;
        this.cantidadPedidos = cantidadPedidos;
        this.tamanoPedidos = tamanoPedidos;
        this.formaEntrega = formaEntrega;
    }
    
    
    public int getIdPedidos() {
        return idPedidos;
    }

    public void setIdPedidos(int idPedidos) {
        this.idPedidos = idPedidos;
    }
   
      public String getIdSession() {
        return idSession;
    }

    public void setIdSession(String idSession) {
        this.idSession = idSession;
    }    

    public String getNombreProductoPedidos() {
        return nombreProductoPedidos;
    }

    public void setNombreProductoPedidos(String nombreProductoPedidos) {
        this.nombreProductoPedidos = nombreProductoPedidos;
    }

    public int getCantidadPedidos() {
        return cantidadPedidos;
    }

    public void setCantidadPedidos(int cantidadPedidos) {
        this.cantidadPedidos = cantidadPedidos;
    }

    public String getTamanoPedidos() {
        return tamanoPedidos;
    }

    public void setTamanoPedidos(String tamanoPedidos) {
        this.tamanoPedidos = tamanoPedidos;
    }

    public double getCostoIndividual() {
        return costoIndividual;
    }

    public void setCostoIndividual(double costoIndividual) {
        this.costoIndividual = costoIndividual;
    }    
    
    public double getImportePedidos() {
        return importePedidos;
    }

    public void setImportePedidos(double importePedidos) {
        this.importePedidos = importePedidos;
    }

    public String getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(String idCliente) {
        this.idCliente = idCliente;
    }

    public Date getFechaPedido() {
        return fechaPedido;
    }

    public void setFechaPedido(Date fechaPedido) {
        this.fechaPedido = fechaPedido;
    }

    public String getFormaEntrega() {
        return formaEntrega;
    }

    public void setFormaEntrega(String formaEntrega) {
        this.formaEntrega = formaEntrega;
    }

    @Override
    public String toString() {
        return "EntidadPedidos{" + "idPedidos=" + idPedidos + ", idSession=" + idSession + ", nombreProductoPedidos=" + nombreProductoPedidos + ", cantidadPedidos=" + cantidadPedidos + ", tamanoPedidos=" + tamanoPedidos + ", costoIndividual=" + costoIndividual + ", importePedidos=" + importePedidos + ", idCliente=" + idCliente + ", fechaPedido=" + fechaPedido + ", formaEntrega=" + formaEntrega + '}';
    }
   
    
}
