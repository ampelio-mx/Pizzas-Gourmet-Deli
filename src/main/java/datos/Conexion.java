package datos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Logger;
import javax.sql.DataSource;
import org.apache.commons.dbcp2.BasicDataSource;

public class Conexion {

    private static final Logger logger = Logger.getLogger(Conexion.class.getName());

    public static DataSource getDataSource() {
        String dbUrl = System.getProperty("DB_URL");
        String dbUser = System.getProperty("DB_USER");
        String dbPassword = System.getProperty("DB_PASSWORD");

        logger.info(dbUrl);
        logger.info(dbUser);
        logger.info(dbPassword);
        // No imprimimos la contraseña por seguridad

        BasicDataSource ds = new BasicDataSource();
        ds.setUrl(dbUrl);
        ds.setUsername(dbUser);
        ds.setPassword(dbPassword);
        ds.setInitialSize(5);
        ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
        return ds;
    }

    public static Connection getConnection() {
        try {
            Connection conn = getDataSource().getConnection();
            logger.info("¡Conexión exitosa a la base de datos!");
            return conn;
        } catch (SQLException ex) {
            logger.severe("Error al obtener la conexión: " + ex.getMessage());
            throw new RuntimeException("Error al obtener la conexión", ex);
        }
    }

    public static void close(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }

    public static void close(ResultSet rs) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }

    public static void close(PreparedStatement stmt) {
        if (stmt != null) {
            try {
                stmt.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
}
