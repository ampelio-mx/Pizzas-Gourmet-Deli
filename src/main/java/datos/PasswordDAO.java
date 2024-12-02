package datos;

import dominio.EntidadClientes;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PasswordDAO {

    private static final String SQL_INSERT_USER_PASS = "INSERT INTO clientes(id_cliente, user_password, nick_name, calle, numero_exterior, numero_interior, colonia, delegacion, codigo_postal, telefono, e_mail) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

    public int crearUserPass(EntidadClientes clienteuserpass) {

        Connection conn = null;
        PreparedStatement stmt = null;

        int rows = 0;

        try {

            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_INSERT_USER_PASS);

            stmt.setString(1, clienteuserpass.getUserIdCliente());
            stmt.setString(2, clienteuserpass.getPassword());
            stmt.setString(3, clienteuserpass.getNombre());
            stmt.setString(4, clienteuserpass.getCalle());
            stmt.setString(5, clienteuserpass.getNumeroExterior());
            stmt.setString(6, clienteuserpass.getNumeroInterior());
            stmt.setString(7, clienteuserpass.getColonia());
            stmt.setString(8, clienteuserpass.getDelegacion());
            stmt.setInt(9, clienteuserpass.getCodigoPostal());
            stmt.setLong(10, clienteuserpass.getTelefono());
            stmt.setString(11, clienteuserpass.geteMail());
            
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
