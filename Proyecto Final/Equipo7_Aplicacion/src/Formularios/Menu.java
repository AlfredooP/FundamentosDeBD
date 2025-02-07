/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package Formularios;

import Clases.Conexion;
import java.awt.Color;
import javax.swing.JOptionPane;

/**
 *
 * @author alfre
 */
public class Menu extends javax.swing.JFrame {
    Conexion oCnx;
    /**
     * Creates new form Menu
     */
    public Menu() {
        initComponents();
        Color color = new Color(255,255,255);
        getContentPane().setBackground(color);
        this.setLocationRelativeTo(null);
        oCnx = new Conexion();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        BotonPlomeros = new javax.swing.JLabel();
        BotonAyudantes = new javax.swing.JLabel();
        BotonSalir = new javax.swing.JLabel();
        jSeparator2 = new javax.swing.JSeparator();
        jSeparator3 = new javax.swing.JSeparator();
        jLabel5 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowOpened(java.awt.event.WindowEvent evt) {
                formWindowOpened(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Gill Sans MT", 0, 36)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(102, 0, 153));
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("MENÚ PRINCIPAL");

        BotonPlomeros.setFont(new java.awt.Font("Microsoft JhengHei UI", 1, 18)); // NOI18N
        BotonPlomeros.setForeground(new java.awt.Color(51, 51, 51));
        BotonPlomeros.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        BotonPlomeros.setText("REGISTRO DE PLOMEROS");
        BotonPlomeros.setToolTipText("Registrar un Plomero");
        BotonPlomeros.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                BotonPlomerosMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                BotonPlomerosMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                BotonPlomerosMouseExited(evt);
            }
        });

        BotonAyudantes.setFont(new java.awt.Font("Microsoft JhengHei UI", 1, 18)); // NOI18N
        BotonAyudantes.setForeground(new java.awt.Color(51, 51, 51));
        BotonAyudantes.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        BotonAyudantes.setText("REGISTRO DE AYUDANTES");
        BotonAyudantes.setToolTipText("Registrar un Ayudante");
        BotonAyudantes.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                BotonAyudantesMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                BotonAyudantesMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                BotonAyudantesMouseExited(evt);
            }
        });

        BotonSalir.setFont(new java.awt.Font("Microsoft JhengHei UI", 1, 18)); // NOI18N
        BotonSalir.setForeground(new java.awt.Color(51, 51, 51));
        BotonSalir.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        BotonSalir.setText("SALIR");
        BotonSalir.setToolTipText("Salir del programa");
        BotonSalir.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                BotonSalirMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                BotonSalirMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                BotonSalirMouseExited(evt);
            }
        });

        jSeparator2.setForeground(new java.awt.Color(51, 51, 51));

        jSeparator3.setForeground(new java.awt.Color(51, 51, 51));

        jLabel5.setFont(new java.awt.Font("Franklin Gothic Demi", 1, 14)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(51, 51, 51));
        jLabel5.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel5.setText("____________________________________________");
        jLabel5.setVerticalAlignment(javax.swing.SwingConstants.TOP);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(100, 100, 100)
                .addComponent(jSeparator3, javax.swing.GroupLayout.PREFERRED_SIZE, 270, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(96, 96, 96)
                        .addComponent(jSeparator2, javax.swing.GroupLayout.PREFERRED_SIZE, 278, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(54, 54, 54)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel5, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 370, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                .addComponent(BotonAyudantes, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(BotonPlomeros, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, 370, Short.MAX_VALUE)
                                .addComponent(BotonSalir, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))))
                .addGap(0, 55, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(65, 65, 65)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel5)
                .addGap(40, 40, 40)
                .addComponent(BotonPlomeros)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jSeparator2, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(BotonAyudantes)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jSeparator3, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(BotonSalir)
                .addContainerGap(65, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void BotonPlomerosMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_BotonPlomerosMouseClicked
        //BOTÓN PLOMEROS
        Plomero plomero = new Plomero();
        plomero.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_BotonPlomerosMouseClicked

    private void BotonAyudantesMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_BotonAyudantesMouseClicked
        //BOTÓN AYUDANTES
        Ayudante ayudante = new Ayudante();
        ayudante.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_BotonAyudantesMouseClicked

    private void BotonSalirMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_BotonSalirMouseClicked
        //BOTÓN SALIR
        JOptionPane.showMessageDialog(null, "EQUIPO 7:\n22130800 - Ángel David Ávalos Carrillo\n22130803 - Alfredo Puentes Vargas");
        this.dispose();
    }//GEN-LAST:event_BotonSalirMouseClicked

    private void BotonPlomerosMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_BotonPlomerosMouseExited
        Color color = new Color(51,51,51);
        this.BotonPlomeros.setForeground(color);
    }//GEN-LAST:event_BotonPlomerosMouseExited

    private void BotonPlomerosMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_BotonPlomerosMouseEntered
        this.BotonPlomeros.setForeground(Color.green);
    }//GEN-LAST:event_BotonPlomerosMouseEntered

    private void BotonAyudantesMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_BotonAyudantesMouseEntered
        this.BotonAyudantes.setForeground(Color.green);
    }//GEN-LAST:event_BotonAyudantesMouseEntered

    private void BotonSalirMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_BotonSalirMouseEntered
        this.BotonSalir.setForeground(Color.red);
    }//GEN-LAST:event_BotonSalirMouseEntered

    private void BotonAyudantesMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_BotonAyudantesMouseExited
        Color color = new Color(51,51,51);
        this.BotonAyudantes.setForeground(color);
    }//GEN-LAST:event_BotonAyudantesMouseExited

    private void BotonSalirMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_BotonSalirMouseExited
        Color color = new Color(51,51,51);
        this.BotonSalir.setForeground(color);
    }//GEN-LAST:event_BotonSalirMouseExited

    private void formWindowOpened(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowOpened
        // TODO add your handling code here:
//         oCnx.conectar();
//        oCnx.desconectar();
    }//GEN-LAST:event_formWindowOpened

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Menu().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel BotonAyudantes;
    private javax.swing.JLabel BotonPlomeros;
    private javax.swing.JLabel BotonSalir;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JSeparator jSeparator3;
    // End of variables declaration//GEN-END:variables
}
