package datos;

import dominio.EntidadClientes;
import dominio.EntidadPedidos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PedidosDAO {

    private static final String SQL_INSERTAR_PEDIDOS = "INSERT INTO pedidos(id_session, nombre_producto_pedido, cantidad_pedido, tamano_pedido, precio_individual_pedido, importe_pedido) VALUES(?, ?, ?, ?, ?, ?)";
    private static final String SQL_INSERTAR_TODOS_VALORES_PEDIDOS = "INSERT INTO pedidos(id_session, nombre_producto_pedido, cantidad_pedido, tamano_pedido, precio_individual_pedido, importe_pedido, id_cliente, hr_fecha) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
    private static final String SQL_ACTUALIZAR_FK_PEDIDOS = "UPDATE pedidos SET id_cliente = ?, hr_fecha = ?, forma_entrega = ? WHERE id_session = ?";
    private static final String SQL_LISTAR_PEDIDOS = "SELECT * FROM pedidos";
    private static final String SQL_LISTAR_PEDIDOS_SESION = "SELECT id_pedido, id_session, nombre_producto_pedido, cantidad_pedido, tamano_pedido, precio_individual_pedido, importe_pedido FROM pedidos WHERE id_session = ?";
    private static final String SQL_LISTAR_PEDIDOS_CLIENTE = "SELECT nombre_producto_pedido, cantidad_pedido, tamano_pedido, forma_entrega FROM pedidos WHERE id_cliente = ?";
    private static final String SQL_ELIMINAR_PEDIDO = "DELETE FROM pedidos WHERE id_pedido = ?";
            
    public int insertar(EntidadPedidos pedido) {

        Connection conn = null;
        PreparedStatement stmt = null;

        int rows = 0;
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_INSERTAR_PEDIDOS);
            stmt.setString(1, pedido.getIdSession());
            stmt.setString(2, pedido.getNombreProductoPedidos());
            stmt.setInt(3, pedido.getCantidadPedidos());
            stmt.setString(4, pedido.getTamanoPedidos());
            stmt.setDouble(5, pedido.getCostoIndividual());
            stmt.setDouble(6, pedido.getImportePedidos());

            rows = stmt.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {

            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return rows;

    }           
    
    public int insertarTodosValores (EntidadPedidos pedido) {

        Connection conn = null;
        PreparedStatement stmt = null;
        Date fechaHora = new Date();

        int rows = 0;
        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_INSERTAR_TODOS_VALORES_PEDIDOS);
            stmt.setString(1, pedido.getIdSession());
            stmt.setString(2, pedido.getNombreProductoPedidos());
            stmt.setInt(3, pedido.getCantidadPedidos());
            stmt.setString(4, pedido.getTamanoPedidos());
            stmt.setDouble(5, pedido.getCostoIndividual());
            stmt.setDouble(6, pedido.getImportePedidos());
            stmt.setString(7, pedido.getIdCliente());
            stmt.setTimestamp(8,new Timestamp(fechaHora.getTime()));
            
            rows = stmt.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {

            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return rows;

    } 
    
    public void actualizarIdFK(EntidadClientes ec, EntidadPedidos ep){
        
        Connection conn = null;
        PreparedStatement stmt = null; 
           
        
        Date fechaHora = new Date();
        
        try{
        
        conn = Conexion.getConnection();
        stmt = conn.prepareStatement(SQL_ACTUALIZAR_FK_PEDIDOS);
                
        stmt.setString(1, ec.getUserIdCliente());        
        stmt.setTimestamp(2,new Timestamp(fechaHora.getTime()));
        stmt.setString(3, ep.getFormaEntrega());
        stmt.setString(4, ep.getIdSession());
        stmt.executeUpdate();
        
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {

            Conexion.close(stmt);
            Conexion.close(conn);
        }

    }

    public List<EntidadPedidos> listarTodosPedidos() {

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        EntidadPedidos pedido = null;
        List<EntidadPedidos> listaPedidos = new ArrayList<>();

        try {
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_LISTAR_PEDIDOS);
            rs = stmt.executeQuery();

            while (rs.next()) {
                
                int idPedido = rs.getInt("id_pedido");
                String idSession = rs.getString("id_session");
                String nombreProductoPedido = rs.getString("nombre_producto_pedido");
                int cantidadPedido = rs.getInt("cantidad_pedido");
                String tamanioPedido = rs.getString("tamano_pedido");
                double precioIndividualPedido = rs.getDouble("precio_individual_pedido");
                double subtotalPedido = rs.getDouble("importe_pedido");
                String idCliente = rs.getString("id_cliente");
                Date fecha = rs.getDate("hr_fecha");
                String formaEntrega = rs.getString("forma_entrega");

               pedido = new EntidadPedidos(idPedido, idSession, nombreProductoPedido, cantidadPedido, tamanioPedido, precioIndividualPedido, subtotalPedido, idCliente, fecha, formaEntrega);

                listaPedidos.add(pedido);
            }

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return listaPedidos;
    }
    
    public List<EntidadPedidos> listarPedidosCliente(EntidadPedidos pedidos){
        
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;        
        List<EntidadPedidos> listaPedidos = new ArrayList<>();
        
        try{
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_LISTAR_PEDIDOS_SESION);
            stmt.setString(1, pedidos.getIdSession());
            rs = stmt.executeQuery();
            
            while (rs.next()){
            
                int idPedido = rs.getInt("id_pedido");
                String idSession = rs.getString("id_session");
                String nombreProducto = rs.getString("nombre_producto_pedido");
                int cantidadPedido = rs.getInt("cantidad_pedido");
                String tamanoPedido = rs.getString("tamano_pedido");
                double precioPedido = rs.getDouble("precio_individual_pedido");
                double importePedido = rs.getDouble("importe_pedido");
                
            EntidadPedidos pedido = new EntidadPedidos(idPedido, idSession, nombreProducto, cantidadPedido, tamanoPedido, precioPedido, importePedido);
            listaPedidos.add(pedido);
                
            }
        }catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return listaPedidos;
    }
    
    public List<EntidadPedidos> listarPedidosUser(EntidadPedidos pedidos){
        
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;        
        List<EntidadPedidos> listaPedidos = new ArrayList<>();
        
        try{
            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_LISTAR_PEDIDOS_CLIENTE);
            stmt.setString(1, pedidos.getIdCliente());
            rs = stmt.executeQuery();
            
            while (rs.next()){
                    
               
                String nombreProducto = rs.getString("nombre_producto_pedido");
                int cantidadPedido = rs.getInt("cantidad_pedido");
                String tamanoPedido = rs.getString("tamano_pedido");
                String formaEntrega = rs.getString("forma_entrega");
                
            EntidadPedidos pedido = new EntidadPedidos(nombreProducto, cantidadPedido, tamanoPedido,formaEntrega);
            listaPedidos.add(pedido);
                
            }
        }catch (Exception ex) {
            ex.printStackTrace(System.out);
        } finally {
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }

        return listaPedidos;
    }
    
     public int eliminarPedidoPorId(EntidadPedidos pedido) {

        Connection conn = null;
        PreparedStatement stmt = null;

        int rows = 0;

        try {

            conn = Conexion.getConnection();
            stmt = conn.prepareStatement(SQL_ELIMINAR_PEDIDO);
            stmt.setInt(1, pedido.getIdPedidos());

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
