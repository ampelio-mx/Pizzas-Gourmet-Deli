package datos;

import dominio.EntidadClientes;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ClientesDAO {

    private static final String SQL_UPDATE_BY_ID = "UPDATE clientes SET nick_name = ?, calle = ?, numero_exterior = ?, numero_interior = ?, colonia = ?, delegacion = ?, codigo_postal = ?, telefono = ?, e_mail = ? WHERE id_cliente = ?";
    private static final String SQL_LISTAR_TODOS_CLIENTES = "SELECT * FROM clientes";
    private static final String SQL_READ_USER_PASS = "SELECT * FROM clientes WHERE id_cliente = ?";
    private static final String SQL_READ_PASS = "SELECT * FROM clientes WHERE id_cliente = ? AND user_password = ?";
    private static final String SQL_LIST_CLIENT = "SELECT nick_name, calle, numero_exterior, numero_interior, colonia, delegacion, codigo_postal, telefono, e_mail FROM clientes WHERE id_cliente = ?";

    public int actualizarClientesPorId(EntidadClientes cliente) {

        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_UPDATE_BY_ID);

            stmt.setString(1, cliente.getNombre());
            stmt.setString(2, cliente.getCalle());
            stmt.setString(3, cliente.getNumeroExterior());
            stmt.setString(4, cliente.getNumeroInterior());
            stmt.setString(5, cliente.getColonia());
            stmt.setString(6, cliente.getDelegacion());
            stmt.setInt(7, cliente.getCodigoPostal());
            stmt.setLong(8, cliente.getTelefono());
            stmt.setString(9, cliente.geteMail());
            stmt.setString(10, cliente.getUserIdCliente());
            rows = stmt.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {

            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return rows;

    }

    public List<EntidadClientes> listarTodosClientes() {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        EntidadClientes eC = null;
        List<EntidadClientes> listaClientes = new ArrayList<>();

        try {

            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_LISTAR_TODOS_CLIENTES);
            rs = stmt.executeQuery();

            while (rs.next()) {

                String idCliente = rs.getString("id_cliente");
                String primerNombreCliente = rs.getString("nick_name");
                String calle = rs.getString("calle");
                String numExt = rs.getString("numero_exterior");
                String numInt = rs.getString("numero_interior");
                String colonia = rs.getString("colonia");
                String delegacion = rs.getString("delegacion");
                int codigoPostal = rs.getInt("codigo_postal");
                long telefono = rs.getLong("telefono");
                String eMail = rs.getString("e_mail");

                eC = new EntidadClientes(idCliente, primerNombreCliente, calle, numExt, numInt, colonia, delegacion, codigoPostal, telefono, eMail);
                listaClientes.add(eC);

            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return listaClientes;
    }

    public EntidadClientes validarPassUser(String user) {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        EntidadClientes cliente = new EntidadClientes();

        try {

            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_READ_USER_PASS);
            stmt.setString(1, user);
            rs = stmt.executeQuery();

            while (rs.next()) {

                cliente.setUserIdCliente(rs.getString("id_cliente"));

            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {

            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return cliente;

    }

    public EntidadClientes validarPass(String user, String pass) {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        EntidadClientes cliente = new EntidadClientes();

        try {

            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_READ_PASS);
            stmt.setString(1, user);
            stmt.setString(2, pass);
            rs = stmt.executeQuery();

            while (rs.next()) {

                cliente.setUserIdCliente(rs.getString("id_cliente"));
                cliente.setPassword(rs.getString("user_password"));

            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {

            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return cliente;

    }

    public EntidadClientes listarClientePedido(EntidadClientes eC) {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {

            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_LIST_CLIENT);
            stmt.setString(1, eC.getUserIdCliente());
            rs = stmt.executeQuery();

            if (rs.next()) {

                String nombre = rs.getString("nick_name");
                String calle = rs.getString("calle");
                String numExt = rs.getString("numero_exterior");
                String numInt = rs.getString("numero_interior");
                String colonia = rs.getString("colonia");
                String delegacion = rs.getString("delegacion");
                int cP = rs.getInt("codigo_postal");
                long telefono = rs.getLong("telefono");
                String eMail = rs.getString("e_mail");

                eC.setNombre(nombre);
                eC.setCalle(calle);
                eC.setNumeroExterior(numExt);
                eC.setNumeroInterior(numInt);
                eC.setColonia(colonia);
                eC.setDelegacion(delegacion);
                eC.setCodigoPostal(cP);
                eC.setTelefono(telefono);
                eC.seteMail(eMail);
            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {

            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return eC;
    }

}
