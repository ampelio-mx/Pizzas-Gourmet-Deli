
package dominio;


public class EntidadClientes {
    
    String userIdCliente;
    String password;
    String nombre;
    String calle;
    String numeroExterior;
    String numeroInterior;
    String colonia;
    String delegacion;
    int codigoPostal;
    long telefono;
    String eMail;
    
     

    public EntidadClientes() {
    }
    
    
    //recuperar id para saber si existe al ingresar al sistema
    public EntidadClientes(String userIdCliente) {
        this.userIdCliente = userIdCliente;
    }
    
    //guardar usuario y contraseña por primera vez

    public EntidadClientes(String userIdCliente, String password, String nombre, String calle, String numeroExterior, String numeroInterior, String colonia, String delegacion, int codigoPostal, long telefono, String eMail) {
        this.userIdCliente = userIdCliente;
        this.password = password;
        this.nombre = nombre;
        this.calle = calle;
        this.numeroExterior = numeroExterior;
        this.numeroInterior = numeroInterior;
        this.colonia = colonia;
        this.delegacion = delegacion;
        this.codigoPostal = codigoPostal;
        this.telefono = telefono;
        this.eMail = eMail;
    }

  
  

    //update by id ya que el clliente confirmó datos
    public EntidadClientes(String userIdCliente, String nombre, String calle, String numeroExterior, String numeroInterior, String colonia, String delegacion, int codigoPostal, long telefono, String eMail) {
        this.userIdCliente = userIdCliente;
        this.nombre = nombre;
        this.calle = calle;
        this.numeroExterior = numeroExterior;
        this.numeroInterior = numeroInterior;
        this.colonia = colonia;
        this.delegacion = delegacion;
        this.codigoPostal = codigoPostal;
        this.telefono = telefono;
        this.eMail = eMail;
    }

    //listar cuando se inicio sesión correctamente

    public EntidadClientes(String nombre, String calle, String numeroExterior, String numeroInterior, String colonia, String delegacion, int codigoPostal, long telefono, String eMail) {
        this.nombre = nombre;
        this.calle = calle;
        this.numeroExterior = numeroExterior;
        this.numeroInterior = numeroInterior;
        this.colonia = colonia;
        this.delegacion = delegacion;
        this.codigoPostal = codigoPostal;
        this.telefono = telefono;
        this.eMail = eMail;
    }
    
    //pasar datos de domicilio desde inicio de sesión

    public EntidadClientes(String calle, String numeroExterior, String colonia, String delegacion, int codigoPostal) {
        this.calle = calle;
        this.numeroExterior = numeroExterior;
        this.colonia = colonia;
        this.delegacion = delegacion;
        this.codigoPostal = codigoPostal;
    }

    
    

    public String getUserIdCliente() {
        return userIdCliente;
    }

    public void setUserIdCliente(String userIdCliente) {
        this.userIdCliente = userIdCliente;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public String getNumeroExterior() {
        return numeroExterior;
    }

    public void setNumeroExterior(String numeroExterior) {
        this.numeroExterior = numeroExterior;
    }

    public String getNumeroInterior() {
        return numeroInterior;
    }

    public void setNumeroInterior(String numeroInterior) {
        this.numeroInterior = numeroInterior;
    }

    

    public String getColonia() {
        return colonia;
    }

    public void setColonia(String colonia) {
        this.colonia = colonia;
    }

    public String getDelegacion() {
        return delegacion;
    }

    public void setDelegacion(String delegacion) {
        this.delegacion = delegacion;
    }

    public int getCodigoPostal() {
        return codigoPostal;
    }

    public void setCodigoPostal(int codigoPostal) {
        this.codigoPostal = codigoPostal;
    }

   

   

    public long getTelefono() {
        return telefono;
    }

    public void setTelefono(long telefono) {
        this.telefono = telefono;
    }

    public String geteMail() {
        return eMail;
    }

    public void seteMail(String eMail) {
        this.eMail = eMail;
    }

    @Override
    public String toString() {
        return "EntidadClientes{" + "userIdCliente=" + userIdCliente + ", password=" + password + ", nombre=" + nombre + ", calle=" + calle + ", numeroExterior=" + numeroExterior + ", numeroInterior=" + numeroInterior + ", colonia=" + colonia + ", delegacion=" + delegacion + ", codigoPostal=" + codigoPostal + ", telefono=" + telefono + ", eMail=" + eMail + '}';
    }

        
    
    
       
}
