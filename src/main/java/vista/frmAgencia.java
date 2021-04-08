package vista;

import modelo.*;
import controlador.Negocio;
import java.awt.BorderLayout;
import javax.swing.table.DefaultTableModel;
import org.jfree.chart.*;

import org.jfree.data.general.DefaultPieDataset;

import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.chart.plot.PlotOrientation;

import org.jfree.data.xy.XYDataset;
import org.jfree.data.xy.XYSeries;
import org.jfree.data.xy.XYSeriesCollection;

public class frmAgencia extends javax.swing.JFrame {

    Negocio obj = new Negocio();

    public frmAgencia() {

        initComponents();
        setLocationRelativeTo(this);
        llenarYear();
        llenarYear2();
    }

    public void llenarYear() {

        for (Fac_cabe f : obj.listYear()) {

            cbYear.addItem(f.getFac_fec());
        }
    }

    public void llenarYear2() {

        for (Fac_cabe f : obj.listYear()) {

            cbYear2.addItem(f.getFac_fec());
        }
    }

    public void listarPedidos(String cod) {

        DefaultTableModel dt = (DefaultTableModel) tabPedidos.getModel();
        dt.setRowCount(0);// 0 filas

        for (Ped_Deta x : obj.lisDet_Pedidos(cod)) {

            Object v[] = {x.getArt_cod(), x.getArt_nom(), x.getArt_pre(), x.getArt_can(), x.getPed_total()};
            dt.addRow(v);
        }
    }

    public void listarPedidos2(String cod) {

        DefaultTableModel dt = (DefaultTableModel) tabPedidos2.getModel();
        dt.setRowCount(0);// 0 filas

        for (Ped_Deta x : obj.lisDet_Pedidos2(cod)) {

            Object v[] = {x.getArt_cod(), x.getArt_nom(), x.getArt_pre(), x.getArt_can(), x.getPed_total()};
            dt.addRow(v);
        }

    }

    public void lineal(int an) {

        XYSeries serie = new XYSeries("venta");

        for (Resumen_1 x : obj.lisMes(an)) {

            serie.add(x.getMes(), x.getTotal());
        }

        XYDataset ds = new XYSeriesCollection(serie);
        JFreeChart jg = ChartFactory.createXYLineChart("Año " + an, "Mes", "venta", ds, PlotOrientation.VERTICAL, true, true, true);
        ChartPanel cp = new ChartPanel(jg);
        panelGrafico.removeAll();
        panelGrafico.setLayout(new java.awt.BorderLayout());
        panelGrafico.add(cp, BorderLayout.CENTER);
        panelGrafico.validate();
    }

    public void barra(int an) {

        DefaultCategoryDataset ds = new DefaultCategoryDataset();

        for (Resumen_1 x : obj.lisMes(an)) {

            ds.setValue(x.getTotal(), "Ventas", x.Lmes());
        }

        JFreeChart jg = ChartFactory.createBarChart3D("Año: " + an, "Mes", "Venta", ds, PlotOrientation.VERTICAL, true, true, true);
        ChartPanel cp = new ChartPanel(jg);
        panelGrafico.removeAll();
        panelGrafico.setLayout(new java.awt.BorderLayout());
        panelGrafico.add(cp, BorderLayout.CENTER);
        panelGrafico.validate();
    }

    public void barra2(int an) {

        DefaultCategoryDataset ds = new DefaultCategoryDataset();

        for (Resumen_2 x : obj.lisMes2(an)) {

            ds.setValue(x.getCantidad(), "Producto", x.getNombre());
        }

        JFreeChart jg = ChartFactory.createBarChart3D("Año: " + an, "Nombre", "Producto", ds, PlotOrientation.VERTICAL, true, true, true);
        ChartPanel cp = new ChartPanel(jg);
        panelGrafico.removeAll();
        panelGrafico.setLayout(new java.awt.BorderLayout());
        panelGrafico.add(cp, BorderLayout.CENTER);
        panelGrafico.validate();
    }

    public void circulo(int an) {

        DefaultPieDataset ds = new DefaultPieDataset();
        for (Resumen_1 x : obj.lisMes(an)) {
            ds.setValue(x.Lmes(), x.getTotal());
        }

        JFreeChart jg = ChartFactory.createPieChart3D("Year " + an, ds, true, true, true);
        ChartPanel cp = new ChartPanel(jg);
        panelGrafico.removeAll();
        panelGrafico.setLayout(new java.awt.BorderLayout());
        panelGrafico.add(cp, BorderLayout.CENTER);
        panelGrafico.validate();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jTabbedPane1 = new javax.swing.JTabbedPane();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        cbYear = new javax.swing.JComboBox<>();
        jScrollPane1 = new javax.swing.JScrollPane();
        tabPedidos = new javax.swing.JTable();
        panelGrafico = new javax.swing.JPanel();
        btnCircular = new javax.swing.JButton();
        btnBarras = new javax.swing.JButton();
        btnLineal = new javax.swing.JButton();
        btnSalir = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        cbYear2 = new javax.swing.JComboBox<>();
        jScrollPane2 = new javax.swing.JScrollPane();
        tabPedidos2 = new javax.swing.JTable();
        btnCircular2 = new javax.swing.JButton();
        btnBarra2 = new javax.swing.JButton();
        btnLinea2 = new javax.swing.JButton();
        panelGrafico2 = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        lbYear = new javax.swing.JLabel();
        btnSalir2 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setText("SELECCIONE EL AÑO:");

        cbYear.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbYearActionPerformed(evt);
            }
        });

        tabPedidos.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null}
            },
            new String [] {
                "Código", "Nombre", "Precio", "Cantidad", "Total"
            }
        ));
        jScrollPane1.setViewportView(tabPedidos);

        panelGrafico.setBorder(javax.swing.BorderFactory.createTitledBorder("Gráficos"));

        javax.swing.GroupLayout panelGraficoLayout = new javax.swing.GroupLayout(panelGrafico);
        panelGrafico.setLayout(panelGraficoLayout);
        panelGraficoLayout.setHorizontalGroup(
            panelGraficoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 741, Short.MAX_VALUE)
        );
        panelGraficoLayout.setVerticalGroup(
            panelGraficoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 447, Short.MAX_VALUE)
        );

        btnCircular.setText("Circular");
        btnCircular.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCircularActionPerformed(evt);
            }
        });

        btnBarras.setText("Barra");
        btnBarras.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnBarrasActionPerformed(evt);
            }
        });

        btnLineal.setText("Lineal");
        btnLineal.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLinealActionPerformed(evt);
            }
        });

        btnSalir.setText("Salir");
        btnSalir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSalirActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(42, 42, 42)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 922, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jLabel1)
                        .addGap(38, 38, 38)
                        .addComponent(cbYear, javax.swing.GroupLayout.PREFERRED_SIZE, 168, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(btnBarras, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(btnLineal, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(btnCircular, javax.swing.GroupLayout.DEFAULT_SIZE, 132, Short.MAX_VALUE)
                            .addComponent(btnSalir, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .addGap(39, 39, 39)
                        .addComponent(panelGrafico, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(115, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(13, 13, 13)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(cbYear, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 256, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(31, 31, 31)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(btnCircular)
                        .addGap(31, 31, 31)
                        .addComponent(btnBarras)
                        .addGap(36, 36, 36)
                        .addComponent(btnLineal)
                        .addGap(146, 146, 146)
                        .addComponent(btnSalir))
                    .addComponent(panelGrafico, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(24, Short.MAX_VALUE))
        );

        jTabbedPane1.addTab("PEDIDOS POR AÑO", jPanel1);

        jLabel2.setText("SELECCIONE EL AÑO:");

        cbYear2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbYear2ActionPerformed(evt);
            }
        });

        tabPedidos2.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null}
            },
            new String [] {
                "Código", "Nombre", "Precio", "Cantidad", "Total"
            }
        ));
        jScrollPane2.setViewportView(tabPedidos2);

        btnCircular2.setText("Circular");

        btnBarra2.setText("Barra");
        btnBarra2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnBarra2ActionPerformed(evt);
            }
        });

        btnLinea2.setText("Lineal");
        btnLinea2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLinea2ActionPerformed(evt);
            }
        });

        panelGrafico2.setBorder(javax.swing.BorderFactory.createTitledBorder("Gráfico"));

        javax.swing.GroupLayout panelGrafico2Layout = new javax.swing.GroupLayout(panelGrafico2);
        panelGrafico2.setLayout(panelGrafico2Layout);
        panelGrafico2Layout.setHorizontalGroup(
            panelGrafico2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 792, Short.MAX_VALUE)
        );
        panelGrafico2Layout.setVerticalGroup(
            panelGrafico2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 438, Short.MAX_VALUE)
        );

        jLabel3.setText("LOS 10 PRODUCTOS CON MAYOR VENTA EN EL AÑO");

        lbYear.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lbYear.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        btnSalir2.setText("Salir");
        btnSalir2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSalir2ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(53, 53, 53)
                        .addComponent(jLabel2)
                        .addGap(18, 18, 18)
                        .addComponent(cbYear2, javax.swing.GroupLayout.PREFERRED_SIZE, 191, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(32, 32, 32)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(btnCircular2, javax.swing.GroupLayout.DEFAULT_SIZE, 149, Short.MAX_VALUE)
                                    .addComponent(btnBarra2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(btnLinea2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(btnSalir2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addGap(70, 70, 70)
                                .addComponent(panelGrafico2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(jScrollPane2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 1021, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(144, 144, 144)
                        .addComponent(jLabel3)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(lbYear, javax.swing.GroupLayout.PREFERRED_SIZE, 72, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(26, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(14, 14, 14)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(cbYear2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(27, 27, 27)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(lbYear, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel3, javax.swing.GroupLayout.DEFAULT_SIZE, 26, Short.MAX_VALUE))
                .addGap(18, 18, 18)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 205, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(26, 26, 26)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(btnCircular2)
                        .addGap(18, 18, 18)
                        .addComponent(btnBarra2)
                        .addGap(18, 18, 18)
                        .addComponent(btnLinea2)
                        .addGap(140, 140, 140)
                        .addComponent(btnSalir2))
                    .addComponent(panelGrafico2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(29, Short.MAX_VALUE))
        );

        jTabbedPane1.addTab("PRODUCTOS MAYOR VENTA", jPanel2);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(34, 34, 34)
                .addComponent(jTabbedPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(31, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(23, 23, 23)
                .addComponent(jTabbedPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 858, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(23, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnSalir2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSalir2ActionPerformed

        System.exit(0);
    }//GEN-LAST:event_btnSalir2ActionPerformed

    private void btnLinea2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLinea2ActionPerformed

    }//GEN-LAST:event_btnLinea2ActionPerformed

    private void btnBarra2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnBarra2ActionPerformed

        String an = cbYear2.getSelectedItem().toString();
        int an_b = Integer.parseInt(an);
        barra2(an_b);
    }//GEN-LAST:event_btnBarra2ActionPerformed

    private void cbYear2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cbYear2ActionPerformed

        try {

            String cad = cbYear2.getSelectedItem().toString();
            listarPedidos2(cad);
            lbYear.setText(cad);

        } catch (Exception ex) {

        }
    }//GEN-LAST:event_cbYear2ActionPerformed

    private void btnSalirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSalirActionPerformed
        System.exit(0);
    }//GEN-LAST:event_btnSalirActionPerformed

    private void btnLinealActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLinealActionPerformed

        String an = cbYear.getSelectedItem().toString();
        int an_l = Integer.parseInt(an);
        lineal(an_l);
    }//GEN-LAST:event_btnLinealActionPerformed

    private void btnBarrasActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnBarrasActionPerformed

        String an = cbYear.getSelectedItem().toString();
        int an_b = Integer.parseInt(an);
        barra(an_b);
    }//GEN-LAST:event_btnBarrasActionPerformed

    private void btnCircularActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCircularActionPerformed

        String an = cbYear.getSelectedItem().toString();
        int an_c = Integer.parseInt(an);
        circulo(an_c);
    }//GEN-LAST:event_btnCircularActionPerformed

    private void cbYearActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cbYearActionPerformed

        try {

            String cad = cbYear.getSelectedItem().toString();
            listarPedidos(cad);

        } catch (Exception ex) {

        }
    }//GEN-LAST:event_cbYearActionPerformed

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
            java.util.logging.Logger.getLogger(frmAgencia.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(frmAgencia.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(frmAgencia.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(frmAgencia.class
                    .getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new frmAgencia().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnBarra2;
    private javax.swing.JButton btnBarras;
    private javax.swing.JButton btnCircular;
    private javax.swing.JButton btnCircular2;
    private javax.swing.JButton btnLinea2;
    private javax.swing.JButton btnLineal;
    private javax.swing.JButton btnSalir;
    private javax.swing.JButton btnSalir2;
    private javax.swing.JComboBox<String> cbYear;
    private javax.swing.JComboBox<String> cbYear2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTabbedPane jTabbedPane1;
    private javax.swing.JLabel lbYear;
    private javax.swing.JPanel panelGrafico;
    private javax.swing.JPanel panelGrafico2;
    private javax.swing.JTable tabPedidos;
    private javax.swing.JTable tabPedidos2;
    // End of variables declaration//GEN-END:variables
}
