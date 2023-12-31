/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package views.TestManagerFrame;

import Bean.NhanKhauBean;
import Bean.TestBean;
import controllers.TestManagerController.ThemMoiTestController;
import controllers.TestManagerPanelController;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

public class ThemMoiTest extends javax.swing.JFrame {
    private NhanKhauBean nguoiTest = new NhanKhauBean();
    private TestManagerPanelController parentController;
    private JFrame parentFrame;
    private TestBean testBean;
    private ThemMoiTestController controller;
    /**
     * Creates new form ThemMoiTest
     */
    public ThemMoiTest() {
        initComponents();
    }

    public ThemMoiTest(TestManagerPanelController parentController, JFrame parentFrame){
        this.parentController = parentController;
        this.parentFrame = parentFrame;
        this.parentFrame.setEnabled(false);
        this.testBean = new TestBean();
        initComponents();
        setTitle("Thêm mới test Covid-19");
        setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
        controller = new ThemMoiTestController();

        this.addWindowListener(new WindowAdapter() {
            @Override
            public void windowClosing(WindowEvent e) {
                if (JOptionPane.showConfirmDialog(null, "Are you sure to close??", "Warning!!", JOptionPane.YES_NO_OPTION) == 0) {
                    close();
                }
            }

        });
    }
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btnGrHinhThuc = new javax.swing.ButtonGroup();
        buttonGroup1 = new javax.swing.ButtonGroup();
        jlbIdTest = new javax.swing.JLabel();
        jlblIdNhanKhau = new javax.swing.JLabel();
        jlblTestTime = new javax.swing.JLabel();
        jlblHinhThuc = new javax.swing.JLabel();
        jlblKetQua = new javax.swing.JLabel();
        jtfIdTest = new javax.swing.JTextField();
        jtfKetQua = new javax.swing.JTextField();
        btnCancel = new javax.swing.JButton();
        btnAdd = new javax.swing.JButton();
        testTimeChooser = new com.toedter.calendar.JDateChooser();
        selectBtn = new javax.swing.JButton();
        idNguoiTestJtf = new javax.swing.JTextField();
        jrbtnTestNhanh = new javax.swing.JRadioButton();
        jdbtnTestChuan = new javax.swing.JRadioButton();
        jlbIdNhanKhau = new javax.swing.JLabel();
        tenNguoiTestJtf1 = new javax.swing.JTextField();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jlbIdTest.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jlbIdTest.setText("ID Test:");

        jlblIdNhanKhau.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jlblIdNhanKhau.setText("Họ và tên:");

        jlblTestTime.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jlblTestTime.setText("Thời gian test:");

        jlblHinhThuc.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jlblHinhThuc.setText("Hình thức:");

        jlblKetQua.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jlblKetQua.setText("Kết quả:");

        btnCancel.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N
        btnCancel.setText("Hủy");
        btnCancel.addActionListener(new java.awt.event.ActionListener(){
            @Override
            public void actionPerformed(ActionEvent e) {
                cancelBtnActionPerformed(e);
            }
        });

        btnAdd.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N
        btnAdd.setText("Thêm mới");
        btnAdd.addActionListener(new java.awt.event.ActionListener(){
            @Override
            public void actionPerformed(ActionEvent e) {
                addBtnActionPerformed(e);
            }
        });
        selectBtn.setText("Chọn...");
        selectBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                selectBtnActionPerformed(evt);
            }
        });

        idNguoiTestJtf.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N
        idNguoiTestJtf.setEnabled(false);
        idNguoiTestJtf.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                idNguoiTestJtfActionPerformed(evt);
            }
        });

        btnGrHinhThuc.add(jrbtnTestNhanh);
        jrbtnTestNhanh.setText("Test Nhanh");
        jrbtnTestNhanh.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jrbtnTestNhanhActionPerformed(evt);
            }
        });

        btnGrHinhThuc.add(jdbtnTestChuan);
        jdbtnTestChuan.setText("Test Chuẩn");

        jlbIdNhanKhau.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jlbIdNhanKhau.setText("ID nhân khẩu:");

        tenNguoiTestJtf1.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N
        tenNguoiTestJtf1.setEnabled(false);
        tenNguoiTestJtf1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                tenNguoiTestJtf1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addContainerGap(286, Short.MAX_VALUE)
                        .addComponent(btnCancel, javax.swing.GroupLayout.PREFERRED_SIZE, 101, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(btnAdd))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addGap(82, 82, 82)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jlbIdNhanKhau)
                                .addGap(0, 0, Short.MAX_VALUE))
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jlbIdTest)
                                    .addComponent(jlblTestTime)
                                    .addComponent(jlblKetQua)
                                    .addComponent(jlblHinhThuc)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jlblIdNhanKhau)
                                        .addGap(31, 31, 31)
                                        .addComponent(selectBtn)))
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(8, 8, 8)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addGroup(layout.createSequentialGroup()
                                                .addComponent(jrbtnTestNhanh)
                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                                .addComponent(jdbtnTestChuan))
                                            .addComponent(testTimeChooser, javax.swing.GroupLayout.DEFAULT_SIZE, 239, Short.MAX_VALUE)
                                            .addComponent(jtfIdTest)
                                            .addComponent(jtfKetQua)
                                            .addComponent(idNguoiTestJtf)))
                                    .addGroup(layout.createSequentialGroup()
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(tenNguoiTestJtf1)))))))
                .addGap(112, 112, 112))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap(46, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jtfIdTest, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jlbIdTest))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jlblIdNhanKhau)
                    .addComponent(selectBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(tenNguoiTestJtf1, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(21, 21, 21)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jlbIdNhanKhau)
                    .addComponent(idNguoiTestJtf, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(27, 27, 27)
                        .addComponent(jlblTestTime))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(18, 18, 18)
                        .addComponent(testTimeChooser, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(27, 27, 27)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jlblHinhThuc)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jrbtnTestNhanh)
                        .addComponent(jdbtnTestChuan)))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jtfKetQua, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jlblKetQua))
                .addGap(136, 136, 136)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnCancel)
                    .addComponent(btnAdd))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents


    void close(){
        this.parentFrame.setEnabled(true);
        dispose();
    }



    private void idNguoiTestJtfActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_idNguoiTestJtfActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_idNguoiTestJtfActionPerformed

    private void jrbtnTestNhanhActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jrbtnTestNhanhActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jrbtnTestNhanhActionPerformed

    private void tenNguoiTestJtf1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_tenNguoiTestJtf1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_tenNguoiTestJtf1ActionPerformed
    private void addBtnActionPerformed(java.awt.event.ActionEvent evt) {
        if (this.jtfIdTest.getText().trim().isEmpty()
                ||this.tenNguoiTestJtf1.getText().trim().isEmpty()
                ||this.jtfKetQua.getText().trim().isEmpty()
                ||(!this.jrbtnTestNhanh.isSelected()
                &&!this.jdbtnTestChuan.isSelected())) {
            JOptionPane.showMessageDialog(null, "Vui lòng nhập hết các thông tin", "Warning", JOptionPane.ERROR_MESSAGE );
        } else {
            this.testBean.setNhanKhauModel(nguoiTest.getNhanKhauModel());
            this.testBean.getTest().setId(Integer.parseInt(idNguoiTestJtf.getText()));
            this.testBean.getTest().setTestId(Integer.parseInt(jtfIdTest.getText()));
            this.testBean.getTest().setThoi_diem_test(testTimeChooser.getDate());
            this.testBean.getTest().setKet_qua(jtfKetQua.getText());
            String ht;
            if (jrbtnTestNhanh.isSelected()) ht = jrbtnTestNhanh.getText();
            else ht = jdbtnTestChuan.getText();
            this.testBean.getTest().setHinh_thuc_test(ht);
            //System.out.println(this.testBean.getTest().toString());
            try {
                if (this.controller.themMoiTest(this.testBean)){
                    JOptionPane.showMessageDialog(null,"Thêm thành công!!");
                    close();
                    parentController.refreshData();
                }
            } catch (Exception e){
                System.out.println(e.getMessage());
                JOptionPane.showMessageDialog(rootPane, "Có lỗi xảy ra. Vui lòng kiểm tra lại!!", "Warning", JOptionPane.ERROR_MESSAGE );
            }
        }

    }

    private void selectBtnActionPerformed(java.awt.event.ActionEvent evt) {                                          
        ChooseNhanKhau chooseNhanKhau = new ChooseNhanKhau(this.nguoiTest, this);
        chooseNhanKhau.setLocationRelativeTo(null);
        chooseNhanKhau.setResizable(false);
        chooseNhanKhau.setVisible(true);
    }

    public void setNguoiTest(){
        this.tenNguoiTestJtf1.setText(this.nguoiTest.getNhanKhauModel().getHoTen());
        this.idNguoiTestJtf.setText(Integer.toString(this.nguoiTest.getNhanKhauModel().getID()));
    }

    private void cancelBtnActionPerformed(java.awt.event.ActionEvent evt) {                                          
       if (JOptionPane.showConfirmDialog(null, "Are you sure to close??", "Warning!!", JOptionPane.YES_NO_OPTION) == 0) {
            close();
        }
    }

    /**
     * @param args the command line arguments
     */


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnAdd;
    private javax.swing.JButton btnCancel;
    private javax.swing.ButtonGroup btnGrHinhThuc;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JTextField idNguoiTestJtf;
    private javax.swing.JRadioButton jdbtnTestChuan;
    private javax.swing.JLabel jlbIdNhanKhau;
    private javax.swing.JLabel jlbIdTest;
    private javax.swing.JLabel jlblHinhThuc;
    private javax.swing.JLabel jlblIdNhanKhau;
    private javax.swing.JLabel jlblKetQua;
    private javax.swing.JLabel jlblTestTime;
    private javax.swing.JRadioButton jrbtnTestNhanh;
    private javax.swing.JTextField jtfIdTest;
    private javax.swing.JTextField jtfKetQua;
    private javax.swing.JButton selectBtn;
    private javax.swing.JTextField tenNguoiTestJtf1;
    private com.toedter.calendar.JDateChooser testTimeChooser;
    // End of variables declaration//GEN-END:variables
}
