package datos;

import dominio.EntidadProductos;
import dominio.EntidadProductos;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

public class ProductosDAO {

    private static final String SQL_CREAR_PIZZA = "INSERT INTO productos(id_producto, nombre_producto, precio_producto_mini, precio_producto_individual, precio_producto_chica, precio_producto_mediana, precio_producto_grande, precio_producto_familiar, precio_producto_bebidas, precio_producto_postres, precio_producto_extras, diferenciador_producto, descripcion_producto, categoria_producto, imagen_producto) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    
    private static final String SQL_ACTUALIZAR_POR_ID = "UPDATE productos SET nombre_producto = ?, precio_producto_mini = ?, precio_producto_individual = ?, precio_producto_chica = ?, precio_producto_mediana = ?, precio_producto_grande = ?, precio_producto_familiar = ?, precio_producto_bebidas = ?, precio_producto_postres = ?, precio_producto_extras = ?, diferenciador_producto = ?, descripcion_producto = ?, imagen_producto = ? WHERE id_producto = ?";
    private static final String SQL_ACTUALIZAR_DIFERENCIADOR_PRODUCTO = "UPDATE productos SET precio_producto_mini = ?, precio_producto_individual = ?, precio_producto_chica = ?, precio_producto_mediana = ?, precio_producto_grande =?, precio_producto_familiar = ? WHERE diferenciador_producto = ?";
    private static final String SQL_ACTUALIZAR_IMG_POR_ID = "UPDATE productos SET imagen_producto = ? WHERE id_producto = ?";

    private static final String SQL_LISTAR_TODAS_PIZZAS = "SELECT * FROM productos";
    private static final String SQL_LISTAR_POR_ID_PIZZA = "SELECT * FROM productos WHERE id_producto = ?";
    private static final String SQL_LISTAR_POR_DIFERENCIADOR_PIZZA_TRAD = "SELECT * FROM productos";
    private static final String SQL_LISTAR_POR_DIFERENCIADOR_PIZZA_GOUR = "SELECT * FROM productos WHERE diferenciador_producto = 3 OR diferenciador_producto = 4";
    private static final String SQL_LISTAR_POR_ID_PIZZAFORM = "SELECT precio_producto_mini, precio_producto_individual, precio_producto_chica, precio_producto_mediana, precio_producto_grande, precio_producto_familiar FROM productos WHERE id_producto = ?";
    private static final String LISTAR_IMAGEN_BY_ID = "SELECT * FROM productos WHERE id_producto = ?";

    private static final String LISTAR_PIZZA_TRAD_PAGINACION_UNO = "SELECT * FROM productos WHERE id_producto = 1001 OR id_producto = 1002 OR id_producto = 1003 OR id_producto = 1004";
    private static final String LISTAR_PIZZA_TRAD_PAGINACION_DOS = "SELECT * FROM productos WHERE id_producto = 1005 OR id_producto = 1006 OR id_producto = 1007 OR id_producto = 1008";
    private static final String LISTAR_PIZZA_TRAD_PAGINACION_TRES = "SELECT * FROM productos WHERE id_producto = 1009 OR id_producto = 1010 OR id_producto = 1011 OR id_producto = 1012";
    private static final String LISTAR_PIZZA_TRAD_PAGINACION_CUATRO = "SELECT * FROM productos WHERE id_producto = 1013 OR id_producto = 1014 OR id_producto = 1015 OR id_producto = 1016";
    private static final String LISTAR_PIZZA_GOUR_PAGINACION_UNO = "SELECT * FROM productos WHERE id_producto = 2001 OR id_producto = 2002 OR id_producto = 2003 OR id_producto = 2004";
    private static final String LISTAR_PIZZA_GOUR_PAGINACION_DOS = "SELECT * FROM productos WHERE id_producto = 2005 OR id_producto = 2006 OR id_producto = 2007 OR id_producto = 2008";
    private static final String LISTAR_PIZZA_GOUR_PAGINACION_TRES = "SELECT * FROM productos WHERE id_producto = 2009 OR id_producto = 2010 OR id_producto = 2011 OR id_producto = 2012";
    private static final String LISTAR_PIZZA_GOUR_PAGINACION_CUATRO = "SELECT * FROM productos WHERE id_producto = 2013 OR id_producto = 2014 OR id_producto = 2015 OR id_producto = 2016";
   private static final String LISTAR_BEBIDAS_PAGINACION_UNO = "SELECT * FROM productos WHERE id_producto = 3001 OR id_producto = 3002 OR id_producto = 3003 OR id_producto = 3004";
    private static final String LISTAR_BEBIDAS_PAGINACION_DOS = "SELECT * FROM productos WHERE id_producto = 3005 OR id_producto = 3006 OR id_producto = 3007 OR id_producto = 3008";
    private static final String LISTAR_ANTOJITOS_PAGINACION_UNO = "SELECT * FROM productos WHERE id_producto = 5001 OR id_producto = 5002 OR id_producto = 5003 OR id_producto = 5004";

    private static final String ELIMINAR_PRODUCTO_POR_ID = "DELETE FROM productos WHERE id_producto = ?";

    public void insertarProductos(EntidadProductos producto) {

        Connection conn = null;
        PreparedStatement stmt = null;

        try {

            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_CREAR_PIZZA);

            stmt.setInt(1, producto.getIdProducto());
            stmt.setString(2, producto.getNombreProducto());
            stmt.setDouble(3, producto.getPrecioProductoMini());
            stmt.setDouble(4, producto.getPrecioProductoIndividual());
            stmt.setDouble(5, producto.getPrecioProductoChica());
            stmt.setDouble(6, producto.getPrecioProductoMediana());
            stmt.setDouble(7, producto.getPrecioProductoGrande());
            stmt.setDouble(8, producto.getPrecioProductoFamiliar());
            stmt.setDouble(9, producto.getPrecioBebidas());
            stmt.setDouble(10, producto.getPrecioPostres());
            stmt.setDouble(11, producto.getPrecioExtras());
            stmt.setInt(12, producto.getDiferenciadosProducto());
            stmt.setString(13, producto.getDescripcionProducto());
            stmt.setString(14, producto.getCategoriaProducto());
            stmt.setBlob(15, producto.getImagenProducto());
            stmt.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {

            Conexion.close(stmt);
            Conexion.close(conn);
        }

    }

    public int actualizarPorId(EntidadProductos producto) {

        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_ACTUALIZAR_POR_ID);

            stmt.setString(1, producto.getNombreProducto());
            stmt.setDouble(2, producto.getPrecioProductoMini());
            stmt.setDouble(3, producto.getPrecioProductoIndividual());
            stmt.setDouble(4, producto.getPrecioProductoChica());
            stmt.setDouble(5, producto.getPrecioProductoMediana());
            stmt.setDouble(6, producto.getPrecioProductoGrande());
            stmt.setDouble(7, producto.getPrecioProductoFamiliar());
            stmt.setDouble(8, producto.getPrecioBebidas());
            stmt.setDouble(9, producto.getPrecioPostres());
            stmt.setDouble(10, producto.getPrecioExtras());
            stmt.setInt(11, producto.getDiferenciadosProducto());
            stmt.setString(12, producto.getDescripcionProducto());
            stmt.setBlob(13, producto.getImagenProducto());
            
            stmt.setInt(14, producto.getIdProducto());
            rows = stmt.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {

            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return rows;

    }

    public int actualizarPorDiferenciador(EntidadProductos producto) {

        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_ACTUALIZAR_DIFERENCIADOR_PRODUCTO);

            stmt.setDouble(1, producto.getPrecioProductoMini());
            stmt.setDouble(2, producto.getPrecioProductoIndividual());
            stmt.setDouble(3, producto.getPrecioProductoChica());
            stmt.setDouble(4, producto.getPrecioProductoMediana());
            stmt.setDouble(5, producto.getPrecioProductoGrande());
            stmt.setDouble(6, producto.getPrecioProductoFamiliar());
            stmt.setInt(7, producto.getDiferenciadosProducto());
            rows = stmt.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {

            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return rows;

    }

    public int actualizarImagenPorId(EntidadProductos producto) {

        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_ACTUALIZAR_IMG_POR_ID);

            stmt.setBlob(1, producto.getImagenProducto());
            stmt.setInt(2, producto.getIdProducto());
            rows = stmt.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {

            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return rows;

    }

    public List<EntidadProductos> listarTodasPizzas() {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        EntidadProductos product = null;
        List<EntidadProductos> lista = new ArrayList<>();

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_LISTAR_TODAS_PIZZAS);
            rs = stmt.executeQuery();

            while (rs.next()) {

                int idProd = rs.getInt("id_producto");
                String nombreProducto = rs.getString("nombre_producto");
                double precioProdMini = rs.getDouble("precio_producto_mini");
                double precioProdInd = rs.getDouble("precio_producto_individual");
                double precioProdChi = rs.getDouble("precio_producto_chica");
                double precioProMed = rs.getDouble("precio_producto_mediana");
                double precioProdGde = rs.getDouble("precio_producto_grande");
                double precioProdFam = rs.getDouble("precio_producto_familiar");
                double precioBebida = rs.getDouble("precio_producto_bebidas");
                double precioPostre = rs.getDouble("precio_producto_postres");
                double precioExtra = rs.getDouble("precio_producto_extras");
                int diferenciadorProd = rs.getInt("diferenciador_producto");
                String descripcionProducto = rs.getString("descripcion_producto");
                String categoriaProducto = rs.getString("categoria_producto");
                InputStream imagenPizza = rs.getBinaryStream("imagen_producto");

                product = new EntidadProductos(idProd, nombreProducto, precioProdMini, precioProdInd, precioProdChi, precioProMed, precioProdGde, precioProdFam, precioBebida, precioPostre, precioExtra, diferenciadorProd, descripcionProducto, categoriaProducto, imagenPizza);

                lista.add(product);
            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return lista;
    }

    public EntidadProductos listarPizzaPorId(EntidadProductos productosPizzas) {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {

            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_LISTAR_POR_ID_PIZZA);
            stmt.setInt(1, productosPizzas.getIdProducto());
            rs = stmt.executeQuery();

            if (rs.next()) {
                
                int idProducto = rs.getInt("id_producto");
                String nombreProducto = rs.getString("nombre_producto");
                double pizzaMini = rs.getDouble("precio_producto_mini");
                double pizzaInd = rs.getDouble("precio_producto_individual");
                double pizzaChica = rs.getDouble("precio_producto_chica");
                double pizzaMed = rs.getDouble("precio_producto_mediana");
                double pizzaGde = rs.getDouble("precio_producto_grande");
                double pizzaFam = rs.getDouble("precio_producto_familiar");
                double bebida = rs.getDouble("precio_producto_bebidas");
                double postre = rs.getDouble("precio_producto_postres");
                double extras = rs.getDouble("precio_producto_extras");
                int diferenciadorPizza = rs.getInt("diferenciador_producto");

                productosPizzas.setIdProducto(idProducto);
                productosPizzas.setNombreProducto(nombreProducto);
                productosPizzas.setPrecioProductoMini(pizzaMini);
                productosPizzas.setPrecioProductoIndividual(pizzaInd);
                productosPizzas.setPrecioProductoChica(pizzaChica);
                productosPizzas.setPrecioProductoMediana(pizzaMed);
                productosPizzas.setPrecioProductoGrande(pizzaGde);
                productosPizzas.setPrecioProductoFamiliar(pizzaFam);
                productosPizzas.setPrecioBebidas(bebida);
                productosPizzas.setPrecioPostres(postre);
                productosPizzas.setPrecioExtras(extras);                
                productosPizzas.setDiferenciadosProducto(diferenciadorPizza);


            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {

            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return productosPizzas;
    }

    public List<EntidadProductos> listarTodasPizzasDiferenciadorTra() {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        EntidadProductos product = null;
        List<EntidadProductos> lista = new ArrayList<>();

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_LISTAR_POR_DIFERENCIADOR_PIZZA_TRAD);
            rs = stmt.executeQuery();

            while (rs.next()) {

                int idProd = rs.getInt("id_producto");
                String nombreProducto = rs.getString("nombre_producto");
                double precioProdMini = rs.getDouble("precio_producto_mini");
                double precioProdInd = rs.getDouble("precio_producto_individual");
                double precioProdChi = rs.getDouble("precio_producto_chica");
                double precioProMed = rs.getDouble("precio_producto_mediana");
                double precioProdGde = rs.getDouble("precio_producto_grande");
                double precioProdFam = rs.getDouble("precio_producto_familiar");
                int diferenciadorProd = rs.getInt("diferenciador_producto");
                String descripcionProducto = rs.getString("descripcion_producto");
                String categoriaProducto = rs.getString("categoria_producto");
                InputStream imagenPizza = rs.getBinaryStream("imagen_producto");

                product = new EntidadProductos(idProd, nombreProducto, precioProdMini, precioProdInd, precioProdChi, precioProMed, precioProdGde, precioProdFam, diferenciadorProd, descripcionProducto, categoriaProducto, imagenPizza);

                lista.add(product);
            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return lista;
    }

    public List<EntidadProductos> listarTodasPizzasDiferenciadorGour() {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        EntidadProductos product = null;
        List<EntidadProductos> lista = new ArrayList<>();

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_LISTAR_POR_DIFERENCIADOR_PIZZA_GOUR);
            rs = stmt.executeQuery();

            while (rs.next()) {

                int idProd = rs.getInt("id_producto");
                String nombreProducto = rs.getString("nombre_producto");
                double precioProdMini = rs.getDouble("precio_producto_mini");
                double precioProdInd = rs.getDouble("precio_producto_individual");
                double precioProdChi = rs.getDouble("precio_producto_chica");
                double precioProMed = rs.getDouble("precio_producto_mediana");
                double precioProdGde = rs.getDouble("precio_producto_grande");
                double precioProdFam = rs.getDouble("precio_producto_familiar");
                int diferenciadorProd = rs.getInt("diferenciador_producto");
                String descripcionProducto = rs.getString("descripcion_producto");
                String categoriaProducto = rs.getString("categoria_producto");
                InputStream imagenPizza = rs.getBinaryStream("imagen_producto");

                product = new EntidadProductos(idProd, nombreProducto, precioProdMini, precioProdInd, precioProdChi, precioProMed, precioProdGde, precioProdFam, diferenciadorProd, descripcionProducto, categoriaProducto, imagenPizza);

                lista.add(product);
            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return lista;
    }

    //LISTAR PAGIACION UNO
    public List<EntidadProductos> listarPaginacionUno() {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        EntidadProductos product = null;
        List<EntidadProductos> lista = new ArrayList<>();

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(LISTAR_PIZZA_TRAD_PAGINACION_UNO);
            rs = stmt.executeQuery();

            while (rs.next()) {

                int idProd = rs.getInt("id_producto");
                String nombreProducto = rs.getString("nombre_producto");
                double precioProdMini = rs.getDouble("precio_producto_mini");
                double precioProdInd = rs.getDouble("precio_producto_individual");
                double precioProdChi = rs.getDouble("precio_producto_chica");
                double precioProMed = rs.getDouble("precio_producto_mediana");
                double precioProdGde = rs.getDouble("precio_producto_grande");
                double precioProdFam = rs.getDouble("precio_producto_familiar");
                int diferenciadorProd = rs.getInt("diferenciador_producto");
                String descripcionProducto = rs.getString("descripcion_producto");
                String categoriaProducto = rs.getString("categoria_producto");
                InputStream imagenPizza = rs.getBinaryStream("imagen_producto");

                product = new EntidadProductos(idProd, nombreProducto, precioProdMini, precioProdInd, precioProdChi, precioProMed, precioProdGde, precioProdFam, diferenciadorProd, descripcionProducto, categoriaProducto, imagenPizza);

                lista.add(product);
            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return lista;
    }

    //LISTAR PAGIACION DOS
    public List<EntidadProductos> listarPaginacionDos() {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        EntidadProductos product = null;
        List<EntidadProductos> lista = new ArrayList<>();

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(LISTAR_PIZZA_TRAD_PAGINACION_DOS);
            rs = stmt.executeQuery();

            while (rs.next()) {

                int idProd = rs.getInt("id_producto");
                String nombreProducto = rs.getString("nombre_producto");
                double precioProdMini = rs.getDouble("precio_producto_mini");
                double precioProdInd = rs.getDouble("precio_producto_individual");
                double precioProdChi = rs.getDouble("precio_producto_chica");
                double precioProMed = rs.getDouble("precio_producto_mediana");
                double precioProdGde = rs.getDouble("precio_producto_grande");
                double precioProdFam = rs.getDouble("precio_producto_familiar");
                int diferenciadorProd = rs.getInt("diferenciador_producto");
                String descripcionProducto = rs.getString("descripcion_producto");
                String categoriaProducto = rs.getString("categoria_producto");
                InputStream imagenPizza = rs.getBinaryStream("imagen_producto");

                product = new EntidadProductos(idProd, nombreProducto, precioProdMini, precioProdInd, precioProdChi, precioProMed, precioProdGde, precioProdFam, diferenciadorProd, descripcionProducto, categoriaProducto, imagenPizza);

                lista.add(product);
            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return lista;
    }

    //LISTAR PAGIACION TRES
    public List<EntidadProductos> listarPaginacionTres() {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        EntidadProductos product = null;
        List<EntidadProductos> lista = new ArrayList<>();

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(LISTAR_PIZZA_TRAD_PAGINACION_TRES);
            rs = stmt.executeQuery();

            while (rs.next()) {

                int idProd = rs.getInt("id_producto");
                String nombreProducto = rs.getString("nombre_producto");
                double precioProdMini = rs.getDouble("precio_producto_mini");
                double precioProdInd = rs.getDouble("precio_producto_individual");
                double precioProdChi = rs.getDouble("precio_producto_chica");
                double precioProMed = rs.getDouble("precio_producto_mediana");
                double precioProdGde = rs.getDouble("precio_producto_grande");
                double precioProdFam = rs.getDouble("precio_producto_familiar");
                int diferenciadorProd = rs.getInt("diferenciador_producto");
                String descripcionProducto = rs.getString("descripcion_producto");
                String categoriaProducto = rs.getString("categoria_producto");
                InputStream imagenPizza = rs.getBinaryStream("imagen_producto");

                product = new EntidadProductos(idProd, nombreProducto, precioProdMini, precioProdInd, precioProdChi, precioProMed, precioProdGde, precioProdFam, diferenciadorProd, descripcionProducto, categoriaProducto, imagenPizza);

                lista.add(product);
            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return lista;
    }

    //LISTAR PAGINACION CUATRO
    public List<EntidadProductos> listarPaginacionCuatro() {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        EntidadProductos product = null;
        List<EntidadProductos> lista = new ArrayList<>();

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(LISTAR_PIZZA_TRAD_PAGINACION_CUATRO);
            rs = stmt.executeQuery();

            while (rs.next()) {

                int idProd = rs.getInt("id_producto");
                String nombreProducto = rs.getString("nombre_producto");
                double precioProdMini = rs.getDouble("precio_producto_mini");
                double precioProdInd = rs.getDouble("precio_producto_individual");
                double precioProdChi = rs.getDouble("precio_producto_chica");
                double precioProMed = rs.getDouble("precio_producto_mediana");
                double precioProdGde = rs.getDouble("precio_producto_grande");
                double precioProdFam = rs.getDouble("precio_producto_familiar");
                int diferenciadorProd = rs.getInt("diferenciador_producto");
                String descripcionProducto = rs.getString("descripcion_producto");
                String categoriaProducto = rs.getString("categoria_producto");
                InputStream imagenPizza = rs.getBinaryStream("imagen_producto");

                product = new EntidadProductos(idProd, nombreProducto, precioProdMini, precioProdInd, precioProdChi, precioProMed, precioProdGde, precioProdFam, diferenciadorProd, descripcionProducto, categoriaProducto, imagenPizza);

                lista.add(product);
            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return lista;
    }

    //LISTAR PAGINACION GOURMET UNO
    public List<EntidadProductos> listarPaginacionGourUno() {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        EntidadProductos product = null;
        List<EntidadProductos> lista = new ArrayList<>();

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(LISTAR_PIZZA_GOUR_PAGINACION_UNO);
            rs = stmt.executeQuery();

            while (rs.next()) {

                int idProd = rs.getInt("id_producto");
                String nombreProducto = rs.getString("nombre_producto");
                double precioProdMini = rs.getDouble("precio_producto_mini");
                double precioProdInd = rs.getDouble("precio_producto_individual");
                double precioProdChi = rs.getDouble("precio_producto_chica");
                double precioProMed = rs.getDouble("precio_producto_mediana");
                double precioProdGde = rs.getDouble("precio_producto_grande");
                double precioProdFam = rs.getDouble("precio_producto_familiar");
                int diferenciadorProd = rs.getInt("diferenciador_producto");
                String descripcionProducto = rs.getString("descripcion_producto");
                String categoriaProducto = rs.getString("categoria_producto");
                InputStream imagenPizza = rs.getBinaryStream("imagen_producto");

                product = new EntidadProductos(idProd, nombreProducto, precioProdMini, precioProdInd, precioProdChi, precioProMed, precioProdGde, precioProdFam, diferenciadorProd, descripcionProducto, categoriaProducto, imagenPizza);

                lista.add(product);
            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return lista;
    }
    
    //LISTAR PAGINACION GOURMET DOS
    public List<EntidadProductos> listarPaginacionGourDos() {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        EntidadProductos product = null;
        List<EntidadProductos> lista = new ArrayList<>();

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(LISTAR_PIZZA_GOUR_PAGINACION_DOS);
            rs = stmt.executeQuery();

            while (rs.next()) {

                int idProd = rs.getInt("id_producto");
                String nombreProducto = rs.getString("nombre_producto");
                double precioProdMini = rs.getDouble("precio_producto_mini");
                double precioProdInd = rs.getDouble("precio_producto_individual");
                double precioProdChi = rs.getDouble("precio_producto_chica");
                double precioProMed = rs.getDouble("precio_producto_mediana");
                double precioProdGde = rs.getDouble("precio_producto_grande");
                double precioProdFam = rs.getDouble("precio_producto_familiar");
                int diferenciadorProd = rs.getInt("diferenciador_producto");
                String descripcionProducto = rs.getString("descripcion_producto");
                String categoriaProducto = rs.getString("categoria_producto");
                InputStream imagenPizza = rs.getBinaryStream("imagen_producto");

                product = new EntidadProductos(idProd, nombreProducto, precioProdMini, precioProdInd, precioProdChi, precioProMed, precioProdGde, precioProdFam, diferenciadorProd, descripcionProducto, categoriaProducto, imagenPizza);

                lista.add(product);
            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return lista;
    }
    
    //LISTAR PAGINACION GOURMET TRES
    public List<EntidadProductos> listarPaginacionGourTres() {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        EntidadProductos product = null;
        List<EntidadProductos> lista = new ArrayList<>();

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(LISTAR_PIZZA_GOUR_PAGINACION_TRES);
            rs = stmt.executeQuery();

            while (rs.next()) {

                int idProd = rs.getInt("id_producto");
                String nombreProducto = rs.getString("nombre_producto");
                double precioProdMini = rs.getDouble("precio_producto_mini");
                double precioProdInd = rs.getDouble("precio_producto_individual");
                double precioProdChi = rs.getDouble("precio_producto_chica");
                double precioProMed = rs.getDouble("precio_producto_mediana");
                double precioProdGde = rs.getDouble("precio_producto_grande");
                double precioProdFam = rs.getDouble("precio_producto_familiar");
                int diferenciadorProd = rs.getInt("diferenciador_producto");
                String descripcionProducto = rs.getString("descripcion_producto");
                String categoriaProducto = rs.getString("categoria_producto");
                InputStream imagenPizza = rs.getBinaryStream("imagen_producto");

                product = new EntidadProductos(idProd, nombreProducto, precioProdMini, precioProdInd, precioProdChi, precioProMed, precioProdGde, precioProdFam, diferenciadorProd, descripcionProducto, categoriaProducto, imagenPizza);

                lista.add(product);
            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return lista;
    }
    
    //LISTAR PAGINACION GOURMET CUATRO
    public List<EntidadProductos> listarPaginacionGourCuatro() {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        EntidadProductos product = null;
        List<EntidadProductos> lista = new ArrayList<>();

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(LISTAR_PIZZA_GOUR_PAGINACION_CUATRO);
            rs = stmt.executeQuery();

            while (rs.next()) {

                int idProd = rs.getInt("id_producto");
                String nombreProducto = rs.getString("nombre_producto");
                double precioProdMini = rs.getDouble("precio_producto_mini");
                double precioProdInd = rs.getDouble("precio_producto_individual");
                double precioProdChi = rs.getDouble("precio_producto_chica");
                double precioProMed = rs.getDouble("precio_producto_mediana");
                double precioProdGde = rs.getDouble("precio_producto_grande");
                double precioProdFam = rs.getDouble("precio_producto_familiar");
                int diferenciadorProd = rs.getInt("diferenciador_producto");
                String descripcionProducto = rs.getString("descripcion_producto");
                String categoriaProducto = rs.getString("categoria_producto");
                InputStream imagenPizza = rs.getBinaryStream("imagen_producto");

                product = new EntidadProductos(idProd, nombreProducto, precioProdMini, precioProdInd, precioProdChi, precioProMed, precioProdGde, precioProdFam, diferenciadorProd, descripcionProducto, categoriaProducto, imagenPizza);

                lista.add(product);
            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return lista;
    }

    
    //LISTAR PAGINACION BEBIDAS UNO
    public List<EntidadProductos> listarPaginacionBebidasUno() {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        EntidadProductos product = null;
        List<EntidadProductos> lista = new ArrayList<>();

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(LISTAR_BEBIDAS_PAGINACION_UNO);
            rs = stmt.executeQuery();

            while (rs.next()) {

                int idProd = rs.getInt("id_producto");
                String nombreProducto = rs.getString("nombre_producto");
                double precioBebidas = rs.getDouble("precio_producto_bebidas");
                double precioPostres = rs.getDouble("precio_producto_postres");
                double precioExtras = rs.getDouble("precio_producto_extras");                
                int diferenciadorProd = rs.getInt("diferenciador_producto");
                String descripcionProducto = rs.getString("descripcion_producto");
                String categoriaProducto = rs.getString("categoria_producto");
                InputStream imagenPizza = rs.getBinaryStream("imagen_producto");

                product = new EntidadProductos(idProd, nombreProducto, precioBebidas, precioPostres, precioExtras , diferenciadorProd, descripcionProducto, categoriaProducto, imagenPizza);

                lista.add(product);
            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return lista;
    }
    
     //LISTAR PAGINACION BEBIDAS DOS
    public List<EntidadProductos> listarPaginacionBebidasDos() {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        EntidadProductos product = null;
        List<EntidadProductos> lista = new ArrayList<>();

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(LISTAR_BEBIDAS_PAGINACION_DOS);
            rs = stmt.executeQuery();

            while (rs.next()) {

                int idProd = rs.getInt("id_producto");
                String nombreProducto = rs.getString("nombre_producto");
                double precioBebidas = rs.getDouble("precio_producto_bebidas");
                double precioPostres = rs.getDouble("precio_producto_postres");
                double precioExtras = rs.getDouble("precio_producto_extras");                
                int diferenciadorProd = rs.getInt("diferenciador_producto");
                String descripcionProducto = rs.getString("descripcion_producto");
                String categoriaProducto = rs.getString("categoria_producto");
                InputStream imagenPizza = rs.getBinaryStream("imagen_producto");

                product = new EntidadProductos(idProd, nombreProducto, precioBebidas, precioPostres, precioExtras , diferenciadorProd, descripcionProducto, categoriaProducto, imagenPizza);

                lista.add(product);
            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return lista;
    }

     //LISTAR PAGINACION ANTOJITOS UNO
    public List<EntidadProductos> listarPaginacionAntojUno() {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        EntidadProductos product = null;
        List<EntidadProductos> lista = new ArrayList<>();

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(LISTAR_ANTOJITOS_PAGINACION_UNO);
            rs = stmt.executeQuery();

            while (rs.next()) {

                int idProd = rs.getInt("id_producto");
                String nombreProducto = rs.getString("nombre_producto");
                double precioBebidas = rs.getDouble("precio_producto_bebidas");
                double precioPostres = rs.getDouble("precio_producto_postres");
                double precioExtras = rs.getDouble("precio_producto_extras");                
                int diferenciadorProd = rs.getInt("diferenciador_producto");
                String descripcionProducto = rs.getString("descripcion_producto");
                String categoriaProducto = rs.getString("categoria_producto");
                InputStream imagenPizza = rs.getBinaryStream("imagen_producto");

                product = new EntidadProductos(idProd, nombreProducto, precioBebidas, precioPostres, precioExtras , diferenciadorProd, descripcionProducto, categoriaProducto, imagenPizza);

                lista.add(product);
            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return lista;
    }

    public EntidadProductos listarPizzaPorIdFormPizzas(EntidadProductos productosP) {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {

            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_LISTAR_POR_ID_PIZZAFORM);
            stmt.setInt(1, productosP.getIdProducto());
            rs = stmt.executeQuery();

            if (rs.next()) {

                double pizzaMini = rs.getDouble("precio_producto_mini");
                double pizzaInd = rs.getDouble("precio_producto_individual");
                double pizzaChica = rs.getDouble("precio_producto_chica");
                double pizzaMed = rs.getDouble("precio_producto_mediana");
                double pizzaGde = rs.getDouble("precio_producto_grande");
                double pizzaFam = rs.getDouble("precio_producto_familiar");

                productosP.setPrecioProductoMini(pizzaMini);
                productosP.setPrecioProductoIndividual(pizzaInd);
                productosP.setPrecioProductoChica(pizzaChica);
                productosP.setPrecioProductoMediana(pizzaMed);
                productosP.setPrecioProductoGrande(pizzaGde);
                productosP.setPrecioProductoFamiliar(pizzaFam);

            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {

            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return productosP;
    }

    public void listarImg(int idPizza, HttpServletResponse response) throws IOException {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        InputStream inputstream = null;
        OutputStream outputsetream = null;
        BufferedInputStream bufferedinputstream = null;
        BufferedOutputStream bufferedoutputstream = null;
        response.setContentType("image/*");

        try {

            outputsetream = response.getOutputStream();
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(LISTAR_IMAGEN_BY_ID);
            stmt.setInt(1, idPizza);
            rs = stmt.executeQuery();

            if (rs.next()) {
                inputstream = rs.getBinaryStream("imagen_producto");
            }
            bufferedinputstream = new BufferedInputStream(inputstream);
            bufferedoutputstream = new BufferedOutputStream(outputsetream);
            int i = 0;
            while ((i = bufferedinputstream.read()) != -1) {
                bufferedoutputstream.write(i);
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {

            Conexion.close(stmt);
            Conexion.close(conn);
        }
    }

    public int eliminarProductoPorId(EntidadProductos producto) {

        Connection conn = null;
        PreparedStatement stmt = null;

        int rows = 0;

        try {

            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(ELIMINAR_PRODUCTO_POR_ID);
            stmt.setInt(1, producto.getIdProducto());

            rows = stmt.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {

            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return rows;

    }

}


