
package dominio;

import java.io.InputStream;



public class EntidadProductos {
    
    int idProducto;
    String nombreProducto;
    double precioProductoMini;
    double precioProductoIndividual;
    double precioProductoChica;
    double precioProductoMediana;
    double precioProductoGrande;
    double precioProductoFamiliar;
    double precioBebidas;
    double precioPostres;
    double precioExtras;
    int diferenciadosProducto;
    String descripcionProducto;
    String categoriaProducto;     
    InputStream imagenProducto;
    
    //constructor vacío

    public EntidadProductos() {
    }
    
    //listar pizzas por id

    public EntidadProductos(int idProducto) {
        this.idProducto = idProducto;
    }
    
    //actualizar solo imagen por id

    public EntidadProductos(int idProducto, InputStream imagenProducto) {
        this.idProducto = idProducto;
        this.imagenProducto = imagenProducto;
    }    
    
    public EntidadProductos(int idProducto, String nombreProducto, double precioProductoMini, double precioProductoIndividual, double precioProductoChica, double precioProductoMediana, double precioProductoGrande, double precioProductoFamiliar, int diferenciadosProducto, String descripcionProducto, String categoriaProducto, InputStream imagenProducto) {
        this.idProducto = idProducto;
        this.nombreProducto = nombreProducto;
        this.precioProductoMini = precioProductoMini;
        this.precioProductoIndividual = precioProductoIndividual;
        this.precioProductoChica = precioProductoChica;
        this.precioProductoMediana = precioProductoMediana;
        this.precioProductoGrande = precioProductoGrande;
        this.precioProductoFamiliar = precioProductoFamiliar;
        this.diferenciadosProducto = diferenciadosProducto;
        this.descripcionProducto = descripcionProducto;
        this.categoriaProducto = categoriaProducto;
        this.imagenProducto = imagenProducto;
    }
     
    
    // actualizar por codigo diferenciador
    public EntidadProductos(double precioProductoMini, double precioProductoIndividual, double precioProductoChica, double precioProductoMediana, double precioProductoGrande, double precioProductoFamiliar) {
        this.precioProductoMini = precioProductoMini;
        this.precioProductoIndividual = precioProductoIndividual;
        this.precioProductoChica = precioProductoChica;
        this.precioProductoMediana = precioProductoMediana;
        this.precioProductoGrande = precioProductoGrande;
        this.precioProductoFamiliar = precioProductoFamiliar;
    }  
       
    //para actualizaar por id

    public EntidadProductos(int idProducto, String nombreProducto, double precioProductoMini, double precioProductoIndividual, double precioProductoChica, double precioProductoMediana, double precioProductoGrande, double precioProductoFamiliar, double precioBebidas, double precioPostres, double precioExtras, int diferenciadosProducto, String descripcionProducto, InputStream imagenProducto) {
        this.idProducto = idProducto;
        this.nombreProducto = nombreProducto;
        this.precioProductoMini = precioProductoMini;
        this.precioProductoIndividual = precioProductoIndividual;
        this.precioProductoChica = precioProductoChica;
        this.precioProductoMediana = precioProductoMediana;
        this.precioProductoGrande = precioProductoGrande;
        this.precioProductoFamiliar = precioProductoFamiliar;
        this.precioBebidas = precioBebidas;
        this.precioPostres = precioPostres;
        this.precioExtras = precioExtras;
        this.diferenciadosProducto = diferenciadosProducto;
        this.descripcionProducto = descripcionProducto;
        this.imagenProducto = imagenProducto;
    }
    
    
    public EntidadProductos(int idProducto, double precioProductoMini, double precioProductoIndividual, double precioProductoChica, double precioProductoMediana, double precioProductoGrande, double precioProductoFamiliar) {
        this.idProducto = idProducto;
        this.precioProductoMini = precioProductoMini;
        this.precioProductoIndividual = precioProductoIndividual;
        this.precioProductoChica = precioProductoChica;
        this.precioProductoMediana = precioProductoMediana;
        this.precioProductoGrande = precioProductoGrande;
        this.precioProductoFamiliar = precioProductoFamiliar;
    }
    
    //actualizar por diferenciador

    public EntidadProductos(double precioProductoMini, double precioProductoIndividual, double precioProductoChica, double precioProductoMediana, double precioProductoGrande, double precioProductoFamiliar, int diferenciadosProducto) {
        this.precioProductoMini = precioProductoMini;
        this.precioProductoIndividual = precioProductoIndividual;
        this.precioProductoChica = precioProductoChica;
        this.precioProductoMediana = precioProductoMediana;
        this.precioProductoGrande = precioProductoGrande;
        this.precioProductoFamiliar = precioProductoFamiliar;
        this.diferenciadosProducto = diferenciadosProducto;
    }   
    
    //listar todo 

    public EntidadProductos(int idProducto, String nombreProducto, double precioProductoMini, double precioProductoIndividual, double precioProductoChica, double precioProductoMediana, double precioProductoGrande, double precioProductoFamiliar, double precioBebidas, double precioPostres, double precioExtras, int diferenciadosProducto, String descripcionProducto, String categoriaProducto, InputStream imagenProducto) {
        this.idProducto = idProducto;
        this.nombreProducto = nombreProducto;
        this.precioProductoMini = precioProductoMini;
        this.precioProductoIndividual = precioProductoIndividual;
        this.precioProductoChica = precioProductoChica;
        this.precioProductoMediana = precioProductoMediana;
        this.precioProductoGrande = precioProductoGrande;
        this.precioProductoFamiliar = precioProductoFamiliar;
        this.precioBebidas = precioBebidas;
        this.precioPostres = precioPostres;
        this.precioExtras = precioExtras;
        this.diferenciadosProducto = diferenciadosProducto;
        this.descripcionProducto = descripcionProducto;
        this.categoriaProducto = categoriaProducto;
        this.imagenProducto = imagenProducto;
    }
    
    //listar extras, postres y bebidas

    public EntidadProductos(int idProducto, String nombreProducto, double precioBebidas, double precioPostres, double precioExtras, int diferenciadosProducto, String descripcionProducto, String categoriaProducto, InputStream imagenProducto) {
        this.idProducto = idProducto;
        this.nombreProducto = nombreProducto;
        this.precioBebidas = precioBebidas;
        this.precioPostres = precioPostres;
        this.precioExtras = precioExtras;
        this.diferenciadosProducto = diferenciadosProducto;
        this.descripcionProducto = descripcionProducto;
        this.categoriaProducto = categoriaProducto;
        this.imagenProducto = imagenProducto;
    }
    
    

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public double getPrecioProductoMini() {
        return precioProductoMini;
    }

    public void setPrecioProductoMini(double precioProductoMini) {
        this.precioProductoMini = precioProductoMini;
    }

    public double getPrecioProductoIndividual() {
        return precioProductoIndividual;
    }

    public void setPrecioProductoIndividual(double precioProductoIndividual) {
        this.precioProductoIndividual = precioProductoIndividual;
    }

    public double getPrecioProductoChica() {
        return precioProductoChica;
    }

    public void setPrecioProductoChica(double precioProductoChica) {
        this.precioProductoChica = precioProductoChica;
    }

    public double getPrecioProductoMediana() {
        return precioProductoMediana;
    }

    public void setPrecioProductoMediana(double precioProductoMediana) {
        this.precioProductoMediana = precioProductoMediana;
    }

    public double getPrecioProductoGrande() {
        return precioProductoGrande;
    }

    public void setPrecioProductoGrande(double precioProductoGrande) {
        this.precioProductoGrande = precioProductoGrande;
    }

    public double getPrecioProductoFamiliar() {
        return precioProductoFamiliar;
    }

    public void setPrecioProductoFamiliar(double precioProductoFamiliar) {
        this.precioProductoFamiliar = precioProductoFamiliar;
    }

    public double getPrecioBebidas() {
        return precioBebidas;
    }

    public void setPrecioBebidas(double precioBebidas) {
        this.precioBebidas = precioBebidas;
    }

    public double getPrecioPostres() {
        return precioPostres;
    }

    public void setPrecioPostres(double precioPostres) {
        this.precioPostres = precioPostres;
    }

    public double getPrecioExtras() {
        return precioExtras;
    }

    public void setPrecioExtras(double precioExtras) {
        this.precioExtras = precioExtras;
    }

    public int getDiferenciadosProducto() {
        return diferenciadosProducto;
    }

    public void setDiferenciadosProducto(int diferenciadosProducto) {
        this.diferenciadosProducto = diferenciadosProducto;
    }

    public String getDescripcionProducto() {
        return descripcionProducto;
    }

    public void setDescripcionProducto(String descripcionProducto) {
        this.descripcionProducto = descripcionProducto;
    }

    public String getCategoriaProducto() {
        return categoriaProducto;
    }

    public void setCategoriaProducto(String categoriaProducto) {
        this.categoriaProducto = categoriaProducto;
    }

    public InputStream getImagenProducto() {
        return imagenProducto;
    }

    public void setImagenProducto(InputStream imagenProducto) {
        this.imagenProducto = imagenProducto;
    }

    @Override
    public String toString() {
        return "EntidadProductos{" + "idProducto=" + idProducto + ", nombreProducto=" + nombreProducto + ", precioProductoMini=" + precioProductoMini + ", precioProductoIndividual=" + precioProductoIndividual + ", precioProductoChica=" + precioProductoChica + ", precioProductoMediana=" + precioProductoMediana + ", precioProductoGrande=" + precioProductoGrande + ", precioProductoFamiliar=" + precioProductoFamiliar + ", precioBebidas=" + precioBebidas + ", precioPostres=" + precioPostres + ", precioExtras=" + precioExtras + ", diferenciadosProducto=" + diferenciadosProducto + ", descripcionProducto=" + descripcionProducto + ", categoriaProducto=" + categoriaProducto + ", imagenProducto=" + imagenProducto + '}';
    }
    
}
