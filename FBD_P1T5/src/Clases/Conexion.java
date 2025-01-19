package Clases;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

public class Conexion {
    

    private Connection oConexion;

    public Conexion() {
        oConexion = null;
    }

   public Connection conectar(){
        try {
            String cadena = "jdbc:sqlserver://localhost:1433;databaseName=p1t5;integratedSecurity=false;encrypt=true;trustServerCertificate=true"
                    + "";
            oConexion =  DriverManager.getConnection(cadena,"root", "12345678");  
            JOptionPane.showMessageDialog(null,"¡Conexion exitosa!");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null,"No se pudo conectar a la base de datos.."+ex.toString());
        }
       
        return oConexion;
    }

    public void desconectar() {
        try {
            oConexion.close();
            JOptionPane.showMessageDialog(null, "DESCONEXION EXITOSA ");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "ERROR DE DESCONEXION " + ex.getMessage());
        }
    }

        public void altaCliente(int numSSCli, String nombre1, String nombre2, String apPat, String apMat, String calle, String num, String col, String cp, String cd, double salario) {
        conectar();
        String cad = "INSERT INTO CLIENTE (numSSCli,nombre1,nombre2,apPat,apMat,calle,num,col,cp,cd,salario) values (?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement pSt = oConexion.prepareStatement(cad);
            pSt.setInt(1, numSSCli);
            pSt.setString(2, nombre1);
            pSt.setString(3, nombre2);
            pSt.setString(4, apPat);
            pSt.setString(5, apMat);
            pSt.setString(6, calle);
            pSt.setString(7, num);
            pSt.setString(8, col);
            pSt.setString(9, cp);
            pSt.setString(10, cd);
            pSt.setDouble(11, salario);
            pSt.executeUpdate();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "ERROR EN EL ALTA DEL CLIENTE " + ex.toString());
        }
        desconectar();
    }

 
    public void mostrarCliente(JTable tabla) {
        conectar();
        DefaultTableModel modelo = (DefaultTableModel) tabla.getModel();
        modelo.setRowCount(0);
        Statement oSt;
        try {
            oSt = (Statement) oConexion.createStatement();
            ResultSet oRset = oSt.executeQuery("SELECT * FROM CLIENTE");
            Object[] arr = new Object[12];
            while (oRset.next()) {
                arr[0] = oRset.getInt(1);
                arr[1] = oRset.getString(2);
                arr[2] = oRset.getString(3);
                arr[3] = oRset.getString(4);
                arr[4] = oRset.getString(5);
                arr[5] = oRset.getString(6);
                arr[6] = oRset.getString(7);
                arr[7] = oRset.getString(8);
                arr[8] = oRset.getString(9);
                arr[9] = oRset.getString(10);
                arr[10] = oRset.getString(11);
                modelo.addRow(arr);
            }
            tabla.setModel(modelo);
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "ERROR DE SQL " + ex.toString());
        }
    }

    public void bajaCliente(int numSSCli) {
        conectar();
        String cad = "DELETE FROM CLIENTE WHERE numSSCli = '" + numSSCli + "'";
        PreparedStatement oPS;
        try {
            oPS = oConexion.prepareStatement(cad);
            oPS.execute();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "ERROR DE SQL " + ex.toString());
        }
        desconectar();
    }

    public void modificar(int numSSCli, String nombre1, String nombre2, String apPat, String apMat, String calle, String num, String col, String cp, String cd,  int salario) {
        conectar();
        String cad = "UPDATE cliente SET nombre1='" + nombre1 + "',nombre2='" + nombre2 + "',apPat='" + apPat + "',apMat='" + apMat + "',calle='" + calle
                + "',num='" + num + "',col='" + col + "',cp='" + cp + "',cd='" + cd + "',salario='" + salario + "' where numSSCli='" + numSSCli + "'";
        PreparedStatement oPS;
        try {
            oPS = oConexion.prepareStatement(cad);
            oPS.executeUpdate();
            desconectar();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "ERROR DE SQL " + ex.toString());
        }
    }
    
}