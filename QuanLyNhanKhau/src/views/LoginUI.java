package views;

import controllers.LoginController;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.SwingUtilities;


public class LoginUI extends javax.swing.JFrame {
    
    private LoginController cont = new  LoginController();
    
    public LoginUI() {
        initComponents();
        setLocationRelativeTo(null);
        setResizable(false);
        setTitle("QUẢN LÝ THÔNG TIN COVID-19");
        keyListenner(txbUserName);
        keyListenner(txbPasswd);
    }
    
    // xu ly su kien nhan enter
    private void keyListenner(JTextField jtf) {
        jtf.addKeyListener(new KeyAdapter() {
            @Override
            public void keyPressed(KeyEvent e) {
                // neu keycode == 10 ~ enter
                if (e.getKeyCode() == 10) {
                    login();
                }
            }
        }); 
    }

    // dang nhap
    private void login() {
        String userName = txbUserName.getText();
        String password = String.valueOf(txbPasswd.getPassword());
        try {
            if (this.cont.login(userName, password)) {
                dispose();
                MainFrame mainFrame = new MainFrame();
                mainFrame.setLocationRelativeTo(null);
                mainFrame.setResizable(false);
                mainFrame.setVisible(true);
            } else {
                JOptionPane.showMessageDialog(rootPane, "Sai thong tin dang nhap", "Warning", JOptionPane.WARNING_MESSAGE);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(null, "Có lỗi xảy ra!! Vui lòng kiểm tra lại!", "Warning!!", JOptionPane.ERROR_MESSAGE);
        }
    }
            
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jpnLogin = new javax.swing.JPanel();
        txbUserName = new javax.swing.JTextField();
        txbPasswd = new javax.swing.JPasswordField();
        btnLogin = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jLabel5 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jpnLogin.setBackground(new java.awt.Color(255, 255, 255));
        jpnLogin.setForeground(new java.awt.Color(0, 153, 153));

        txbUserName.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        txbUserName.setName("txtUserName"); // NOI18N
        txbUserName.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txbUserNameActionPerformed(evt);
            }
        });

        txbPasswd.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        txbPasswd.setName("txtPasswd"); // NOI18N

        btnLogin.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        btnLogin.setText("Login");
        btnLogin.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnLoginMouseClicked(evt);
            }
        });
        btnLogin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLoginActionPerformed(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Arial", 1, 13)); // NOI18N
        jLabel1.setText("User Name:");

        jLabel2.setFont(new java.awt.Font("Arial", 1, 13)); // NOI18N
        jLabel2.setText("Password:");

        jLabel3.setFont(new java.awt.Font("Arial", 1, 24)); // NOI18N
        jLabel3.setText("Hệ thống quản lí Nhân khẩu và Truy vét Covid");

        jPanel2.setBackground(new java.awt.Color(59, 59, 59));

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );

        jLabel5.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Icons/dancu.png"))); // NOI18N
        jLabel5.setPreferredSize(new java.awt.Dimension(1130, 1122));

        javax.swing.GroupLayout jpnLoginLayout = new javax.swing.GroupLayout(jpnLogin);
        jpnLogin.setLayout(jpnLoginLayout);
        jpnLoginLayout.setHorizontalGroup(
            jpnLoginLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jpnLoginLayout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGroup(jpnLoginLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jpnLoginLayout.createSequentialGroup()
                        .addGap(332, 332, 332)
                        .addComponent(btnLogin, javax.swing.GroupLayout.PREFERRED_SIZE, 149, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jpnLoginLayout.createSequentialGroup()
                        .addGap(209, 209, 209)
                        .addGroup(jpnLoginLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel1)
                            .addComponent(jLabel2))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jpnLoginLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 220, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(jpnLoginLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                .addComponent(txbUserName)
                                .addComponent(txbPasswd, javax.swing.GroupLayout.PREFERRED_SIZE, 257, javax.swing.GroupLayout.PREFERRED_SIZE))))
                    .addGroup(jpnLoginLayout.createSequentialGroup()
                        .addGap(123, 123, 123)
                        .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 551, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(100, Short.MAX_VALUE))
        );
        jpnLoginLayout.setVerticalGroup(
            jpnLoginLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jpnLoginLayout.createSequentialGroup()
                .addGap(20, 20, 20)
                .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 161, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(56, 56, 56)
                .addGroup(jpnLoginLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jpnLoginLayout.createSequentialGroup()
                        .addGroup(jpnLoginLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel1)
                            .addComponent(txbUserName, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(49, 49, 49)
                        .addComponent(jLabel2))
                    .addGroup(jpnLoginLayout.createSequentialGroup()
                        .addGap(76, 76, 76)
                        .addComponent(txbPasswd, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(76, 76, 76)
                .addComponent(btnLogin, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(151, 151, 151))
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        txbUserName.getAccessibleContext().setAccessibleName("txtPasswod");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jpnLogin, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jpnLogin, javax.swing.GroupLayout.PREFERRED_SIZE, 604, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void txbUserNameActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txbUserNameActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txbUserNameActionPerformed

    private void btnLoginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLoginActionPerformed
       this.login();
    }//GEN-LAST:event_btnLoginActionPerformed

    private void btnLoginMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnLoginMouseClicked
        
    }//GEN-LAST:event_btnLoginMouseClicked

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnLogin;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jpnLogin;
    private javax.swing.JPasswordField txbPasswd;
    private javax.swing.JTextField txbUserName;
    // End of variables declaration//GEN-END:variables
}
