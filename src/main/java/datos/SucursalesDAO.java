
package datos;

import dominio.EntidadSucursales;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class SucursalesDAO {
    
    private static final String SQL_READ_CP_SUC = "SELECT * FROM sucursales WHERE codigo_postal_sucursal = ?";
     private static final String SQL_SELECT_SUC_BY_ID = "SELECT * FROM sucursales";
     private static final String SQL_READ_ADMIN_PASS = "SELECT * FROM sucursales WHERE administrador_usuario = ?";
     private static final String SQL_READ_PASS = "SELECT * FROM sucursales WHERE administrador_usuario = ? AND administrador_password = ?";
     
    public List<EntidadSucursales>listarTodasSucursales(){

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        EntidadSucursales sucursal = null;
        List<EntidadSucursales> lista = new ArrayList<>();

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_SELECT_SUC_BY_ID);
            rs = stmt.executeQuery();

            while (rs.next()) {

                int idSuc = rs.getInt("id_sucursal");
                String nombreSuc = rs.getString("nombre_sucursal");
                int cpSuc = rs.getInt("codigo_postal_sucursal");
                String adminUserSuc = rs.getString("administrador_usuario");
                String adminPassSuc = rs.getString("administrador_password");
                

                sucursal = new EntidadSucursales(idSuc, nombreSuc, cpSuc, adminUserSuc, adminPassSuc);
                
                lista.add(sucursal);
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
    
    public EntidadSucursales validarPassAdmin (String adminUser) {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        EntidadSucursales admin = new EntidadSucursales();

        try {

            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_READ_ADMIN_PASS);
            stmt.setString(1, adminUser);
            rs = stmt.executeQuery();

            while (rs.next()) {

                admin.setAdminUser(rs.getString("administrador_usuario"));

            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {

            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return admin;

    }
    
    //LISTAR SUCURSAL POR CODIGO POSTAL
     public EntidadSucursales validarCodigoPostal (int codigoPostal) {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        EntidadSucursales entidadSucursal = new EntidadSucursales();

        try {

            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_READ_CP_SUC);
            stmt.setInt(1, codigoPostal);
            rs = stmt.executeQuery();

            while (rs.next()) {

                entidadSucursal.setCodigoPostalSucursal(rs.getInt("codigo_postal_sucursal"));

            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {

            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return entidadSucursal;

    }
    //LISTAR SUCURSAL POR CODIGO POSTAL
     
    public EntidadSucursales validarPass(String user, String pass) {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        EntidadSucursales admin = new EntidadSucursales();

        try {

            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_READ_PASS);
            stmt.setString(1, user);
            stmt.setString(2, pass);
            rs = stmt.executeQuery();

            while (rs.next()) {

                admin.setAdminUser(rs.getString("administrador_usuario"));
                admin.setAdminPassword(rs.getString("administrador_password"));

            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {

            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return admin;

    }
}
