package accesobbdd1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jorge Cisneros
 */
public class AccesoBBDD1 {

    //variable que almacena la conexión al servidor de BBDD
    Connection conexion;
    
    //variable que almacena el estado de la conexion
    Statement estado;
    
    //almacena el resultado de la consulta
    ResultSet resultado;
    

    
    private void consulta1(){
        try {
            //class.forName se utiliza para indicar el motor de
            //base de datos que vamos a usar
            Class.forName("com.mysql.jdbc.Driver");
            
            //indico los parámetros de la conexión
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/liga", "root", "");
            
            //realizo la conexion
            estado = conexion.createStatement();
            
            //realizo la consulta a la BBDD
            resultado = estado.executeQuery("SELECT * FROM liga.equipos WHERE id_equipo > 7");
            
            while (resultado.next()){
                System.out.println(resultado.getString("nombre"));
            }
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AccesoBBDD1.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AccesoBBDD1.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        AccesoBBDD1 acceso = new AccesoBBDD1();
        acceso.consulta1();
        
    }
    
}
