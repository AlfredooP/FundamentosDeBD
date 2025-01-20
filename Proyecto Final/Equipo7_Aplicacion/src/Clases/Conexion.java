/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
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
/**
 *
 * @author aa711
 */
public class Conexion {
    private Connection oConexion;

    public Conexion() {
        oConexion = null;
    }

   public Connection conectar(){
        try {
            String cadena = "jdbc:sqlserver://localhost:49757;databaseName=E7T5;integratedSecurity=false;encrypt=true;trustServerCertificate=true";
            oConexion =  DriverManager.getConnection(cadena,"sa","alfredo99");  
            //JOptionPane.showMessageDialog(null,"¡Conexion exitosa!");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null,"No se pudo conectar a la base de datos..."+ex.toString());
        }
       
        return oConexion;
    }

    public void desconectar() {
        try {
            oConexion.close();
            //JOptionPane.showMessageDialog(null, "DESCONEXION EXITOSA ");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "ERROR DE DESCONEXION " + ex.getMessage());
        }
    }

    public void altaPlomero(String curpP, String nombre1, String nombre2, String apPat, String apMat, int dia, String mes, int año, String correo) {
        conectar();
        String cad = "INSERT INTO PLOMERO (curpPlom,nomb1P,nomb2P,apPatP,apMatP,diaNP,mesNP,añoNP,correoElec) values (?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement pSt = oConexion.prepareStatement(cad);
            pSt.setString(1, curpP);
            pSt.setString(2, nombre1);
            pSt.setString(3, nombre2);
            pSt.setString(4, apPat);
            pSt.setString(5, apMat);
            pSt.setInt(6, dia);
            pSt.setString(7, mes);
            pSt.setInt(8, año);
            pSt.setString(9, correo);          
            pSt.executeUpdate();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "ERROR EN EL ALTA DEL PLOMERO " + ex.toString());
        }
        desconectar();
    }

 
    public void mostrarPlomero(JTable tabla) {
        conectar();
        DefaultTableModel modelo = (DefaultTableModel) tabla.getModel();
        modelo.setRowCount(0);
        Statement oSt;
        try {
            oSt = (Statement) oConexion.createStatement();
            ResultSet oRset = oSt.executeQuery("SELECT * FROM PLOMERO");
            Object[] arr = new Object[12];
            while (oRset.next()) {
                arr[0] = oRset.getString(1);
                arr[1] = oRset.getString(2);
                arr[2] = oRset.getString(3);
                arr[3] = oRset.getString(4);
                arr[4] = oRset.getString(5);
                arr[5] = oRset.getInt(6);
                arr[6] = oRset.getString(7);
                arr[7] = oRset.getInt(8);
                arr[8] = oRset.getString(9);
                modelo.addRow(arr);
            }
            tabla.setModel(modelo);
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "ERROR DE SQL " + ex.toString());
        }
    }

    public void bajaPlomero(String curpP) {
        conectar();                            
        String cad = "DELETE FROM PLOMERO WHERE curpPlom = '" + curpP + "'";
        PreparedStatement oPS;
        try {
            oPS = oConexion.prepareStatement(cad);
            oPS.execute();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "ERROR DE SQL " + ex.toString());
        }
        desconectar();
    }

    public void modificarPlomero(String curpP, String nombre1, String nombre2, String apPat, String apMat, int dia, String mes, int año, String correo) {
        conectar();
        String cad = "UPDATE plomero SET nomb1P='" + nombre1 + "',nomb2P='" + nombre2 + "',apPatP='" + apPat + "',apMatP='" + apMat + "',diaNP='" + dia
                + "',mesNP='" + mes + "',añoNP='" + año + "',correoElec='" + correo + "' where curpPlom='" + curpP + "'";
        PreparedStatement oPS;
        try {
            oPS = oConexion.prepareStatement(cad);
            oPS.executeUpdate();
            desconectar();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "ERROR DE SQL " + ex.toString());

        }
    }
    
    public void altaAyudante(String curpP, String idAyud,String nombre1, String nombre2, String apPat, String apMat, int edad) {
        conectar();
        String cad = "INSERT INTO ayudante (curpPlom,idAyudante,nomb1A,nomb2A,apPatA,apMatA,edad) values (?,?,?,?,?,?,?)";
        try {
            PreparedStatement pSt = oConexion.prepareStatement(cad);
            pSt.setString(1, curpP);
            pSt.setString(2, idAyud);
            pSt.setString(3, nombre1);
            pSt.setString(4, nombre2);
            pSt.setString(5, apPat);
            pSt.setString(6, apMat);
            pSt.setInt(7, edad);         
            pSt.executeUpdate();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "ERROR EN EL ALTA DEL AYUDANTE " + ex.toString());
        }
        desconectar();
    }

 
    public void mostrarAyudante(JTable tabla) {
        conectar();
        DefaultTableModel modelo = (DefaultTableModel) tabla.getModel();
        modelo.setRowCount(0);
        Statement oSt;
        try {
            oSt = (Statement) oConexion.createStatement();
            ResultSet oRset = oSt.executeQuery("SELECT * FROM AYUDANTE");
            Object[] arr = new Object[12];
            while (oRset.next()) {
                arr[0] = oRset.getString(1);
                arr[1] = oRset.getString(2);
                arr[2] = oRset.getString(3);
                arr[3] = oRset.getString(4);
                arr[4] = oRset.getString(5);
                arr[5] = oRset.getString(6);
                arr[6] = oRset.getInt(7);
                modelo.addRow(arr);
            }
            tabla.setModel(modelo);
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "ERROR DE SQL " + ex.toString());
        }
    }

    public void bajaAyudante(String idAyud) {
        conectar();                            
        String cad = "DELETE FROM AYUDANTE WHERE idAyudante = '" + idAyud + "'";
        PreparedStatement oPS;
        try {
            oPS = oConexion.prepareStatement(cad);
            oPS.execute();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "ERROR DE SQL " + ex.toString());
        }
        desconectar();
    }

    public void modificarAyudante(String curpP, String idAyud,String nombre1, String nombre2, String apPat, String apMat, int edad) {
        conectar(); 
        String cad = "UPDATE ayudante SET nomb1A='" + nombre1 + "',nomb2A='" + nombre2 + "',apPatA='" + apPat + "',apMatA='" + apMat + "',edad='" + edad
                +"' where idAyudante='" + idAyud + "'";
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
