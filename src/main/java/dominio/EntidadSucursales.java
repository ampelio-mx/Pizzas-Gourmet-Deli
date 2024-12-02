
package dominio;


public class EntidadSucursales {
    
    int idSucurdal;
    String nombreSucursal;
    int codigoPostalSucursal;
    String adminUser;
    String adminPassword;

    public EntidadSucursales() {
    }

    public EntidadSucursales(String adminUser) {
        this.adminUser = adminUser;
    }
    
    

    public EntidadSucursales(int idSucurdal, String nombreSucursal, int codigoPostalSucursal, String adminUser, String adminPassword) {
        this.idSucurdal = idSucurdal;
        this.nombreSucursal = nombreSucursal;
        this.codigoPostalSucursal = codigoPostalSucursal;
        this.adminUser = adminUser;
        this.adminPassword = adminPassword;
    }

    public int getIdSucurdal() {
        return idSucurdal;
    }

    public void setIdSucurdal(int idSucurdal) {
        this.idSucurdal = idSucurdal;
    }

    public String getNombreSucursal() {
        return nombreSucursal;
    }

    public void setNombreSucursal(String nombreSucursal) {
        this.nombreSucursal = nombreSucursal;
    }

    public int getCodigoPostalSucursal() {
        return codigoPostalSucursal;
    }

    public void setCodigoPostalSucursal(int codigoPostalSucursal) {
        this.codigoPostalSucursal = codigoPostalSucursal;
    }

    public String getAdminUser() {
        return adminUser;
    }

    public void setAdminUser(String adminUser) {
        this.adminUser = adminUser;
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword;
    }

    @Override
    public String toString() {
        return "EntidadSucursales{" + "idSucurdal=" + idSucurdal + ", nombreSucursal=" + nombreSucursal + ", codigoPostalSucursal=" + codigoPostalSucursal + ", adminUser=" + adminUser + ", adminPassword=" + adminPassword + '}';
    }

    
}
