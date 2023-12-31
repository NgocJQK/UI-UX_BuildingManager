package views;


import Bean.TestBean;
import controllers.TestManagerPanelController;
import views.TestManagerFrame.ThemMoiTest;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.SQLException;

/**
 *
 * @author Ducnm
 */
public class TestManagePanel extends javax.swing.JPanel {
    private JFrame parentJFrame;
    private TestManagerPanelController controller = null;
    private TestBean testBeanSelected;

    public TestBean getTestBeanSelected() {
        return testBeanSelected;
    }

    public void setTestBeanSelected(TestBean testBeanSelected) {
        this.testBeanSelected = testBeanSelected;
    }

    /**
     * Creates new form TestManagePanel
     */
    public TestManagePanel(JFrame parentFrame) {
        this.parentJFrame = parentFrame;
        initComponents();
        controller = new TestManagerPanelController(jPanel1, jTextField1);
        controller.setParentJFrame(parentJFrame);
        controller.setDataTable();

    }
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jBtn = new javax.swing.JButton();
        jPanel1 = new javax.swing.JPanel();

        deleteBtn = new javax.swing.JButton();
        addBtn = new javax.swing.JButton();

        jTextField1 = new javax.swing.JTextField();

        setBackground(new java.awt.Color(255, 255, 255));
        setToolTipText("");
        setPreferredSize(new java.awt.Dimension(855, 465));

        jBtn.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N
        jBtn.setText("Hiển thị");

        jPanel1.setPreferredSize(new java.awt.Dimension(707, 389));

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
                jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGap(0, 707, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
                jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGap(0, 377, Short.MAX_VALUE)
        );



        deleteBtn.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        deleteBtn.setText("Xóa");
        deleteBtn.setPreferredSize(new java.awt.Dimension(101, 25));
        deleteBtn.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                deleteBtnActionPerformed(e);
            }
        });

        addBtn.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        addBtn.setText("Thêm mới");
        addBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                addNewBtnActionPerformed(evt);
            }
        });
        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
                layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addGroup(layout.createSequentialGroup()

                                                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 703, Short.MAX_VALUE)
                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                                        .addComponent(deleteBtn, javax.swing.GroupLayout.DEFAULT_SIZE, 128, Short.MAX_VALUE)
                                                        .addComponent(addBtn, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))

                                        .addGroup(layout.createSequentialGroup()
                                                .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 273, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addGap(61, 61, 61)
                                                .addComponent(jBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 99, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addGap(0, 0, Short.MAX_VALUE)))
                                .addContainerGap())
        );
        layout.setVerticalGroup(
                layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(layout.createSequentialGroup()
                                .addGap(40, 40, 40)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                        .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addComponent(jBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)

                                        .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 375, Short.MAX_VALUE)
                                        .addGroup(layout.createSequentialGroup()
                                                .addComponent(addBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                                .addComponent(deleteBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addGap(0, 306, Short.MAX_VALUE)))
                                .addContainerGap())
        );

        jBtn.getAccessibleContext().setAccessibleName("");
        jBtn.getAccessibleContext().setAccessibleDescription("");
        jBtn.setVisible(false);
    }// </editor-fold>//GEN-END:initComponents


    private void addNewBtnActionPerformed(java.awt.event.ActionEvent evt){
        ThemMoiTest themMoiTest = new ThemMoiTest(this.controller, this.parentJFrame);
        themMoiTest.setLocationRelativeTo(null);
        themMoiTest.setResizable(false);
        themMoiTest.setVisible(true);
    }
    private void deleteBtnActionPerformed(java.awt.event.ActionEvent evt){
        try {
            if (this.controller.xoaTest(this.controller.getTestBeanSelected())){
                JOptionPane.showMessageDialog(null,"Xóa thành công!");
                controller.refreshData();
            }

        } catch (Exception e){
            System.out.println(e.getMessage());
            JOptionPane.showMessageDialog(null, "Chọn thông tin test trước khi xóa!");
        }
    }



    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton addBtn;
    private javax.swing.JButton deleteBtn;
    private javax.swing.JButton jBtn;

    private javax.swing.JPanel jPanel1;
    private javax.swing.JTextField jTextField1;
    // End of variables declaration//GEN-END:variables
}
