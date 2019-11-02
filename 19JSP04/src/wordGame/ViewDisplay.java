package wordGame;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JTextField;
import java.awt.Insets;
import java.awt.Point;
import java.awt.Dimension;
import javax.swing.JTextArea;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.SwingConstants;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import javax.swing.GroupLayout;
import javax.swing.GroupLayout.Alignment;
import java.awt.Font;
import javax.swing.JLabel;
import java.awt.Color;

public class ViewDisplay extends JFrame {

	private JPanel contentPane;
	private JPanel panel_4;
	private JPanel panel_1;
	private JTextField textField;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					ViewDisplay frame = new ViewDisplay();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public ViewDisplay() {
		setTitle("Word Game");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 600, 400);
		contentPane = new JPanel();
		contentPane.setVisible(true);
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JPanel panel_2 = new JPanel();
		panel_2.setBounds(446, 10, 109, 118);
		contentPane.add(panel_2);
		panel_2.setLayout(null);
		
		JLabel lb_clock = new JLabel("hello");
		lb_clock.setFont(new Font("Tahoma", Font.PLAIN, 15));
		lb_clock.setBounds(0, 0, 109, 118);
		panel_2.add(lb_clock);
		
		JPanel panel_3 = new JPanel();
		FlowLayout flowLayout = (FlowLayout) panel_3.getLayout();
		panel_3.setBounds(25, 153, 530, 60);
		contentPane.add(panel_3);
		panel_3.setLayout(null);
		
		JButton btnNewButton_start = new JButton("Start");	
		btnNewButton_start.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				
			}
		});
		btnNewButton_start.setBackground(new Color(153, 255, 0));
		btnNewButton_start.setFont(new Font("Tahoma", Font.BOLD, 15));
		btnNewButton_start.setSize(125, 30);
		btnNewButton_start.setLocation(23, 11);
		JButton btnNewButton_stop = new JButton("Stop");
		btnNewButton_stop.setBackground(new Color(153, 255, 0));
		btnNewButton_stop.setFont(new Font("Tahoma", Font.BOLD, 15));
		btnNewButton_stop.setLocation(380, 13);
		btnNewButton_stop.setSize(125, 30);
		JButton btnNewButton_pause = new JButton("Pause/Remuse");
		btnNewButton_pause.setBackground(new Color(153, 255, 0));
		btnNewButton_pause.setFont(new Font("Tahoma", Font.BOLD, 14));
		btnNewButton_pause.setLocation(186, 11);
		btnNewButton_pause.setSize(155, 30);
		
		panel_3.add(btnNewButton_start);
		panel_3.add(btnNewButton_stop);
		panel_3.add(btnNewButton_pause);
		
		panel_4 = new JPanel();
		panel_4.setVisible(true);
		panel_4.setBounds(25, 217, 530, 144);
		contentPane.add(panel_4);
		panel_4.setLayout(null);
		
		JButton bn_2 = new JButton("2");
		bn_2.setToolTipText("");
		bn_2.setFont(new Font("Tahoma", Font.BOLD, 13));
		bn_2.setVisible(false);
		bn_2.setBounds(53, 0, 50, 23);
		panel_4.add(bn_2);
		
		JButton bn_1 = new JButton("1");
		bn_1.setFont(new Font("Tahoma", Font.BOLD, 13));
		bn_1.setVisible(false);
		bn_1.setBounds(0, 0, 50, 23);
		panel_4.add(bn_1);
		
		JButton bn_4 = new JButton("4");
		bn_4.setFont(new Font("Tahoma", Font.BOLD, 13));
		bn_4.setVisible(false);
		bn_4.setBounds(159, 0, 50, 23);
		panel_4.add(bn_4);
		
		JButton bn_3 = new JButton("3");
		bn_3.setFont(new Font("Tahoma", Font.BOLD, 13));
		bn_3.setVisible(false);
		bn_3.setBounds(106, 0, 50, 23);
		panel_4.add(bn_3);
		
		JButton bn_6 = new JButton("6");
		bn_6.setFont(new Font("Tahoma", Font.BOLD, 13));
		bn_6.setVisible(false);
		bn_6.setBounds(268, 0, 50, 23);
		panel_4.add(bn_6);
		
		JButton bn_5 = new JButton("5");
		bn_5.setFont(new Font("Tahoma", Font.BOLD, 13));
		bn_5.setVisible(false);
		bn_5.setBounds(212, 0, 50, 23);
		panel_4.add(bn_5);
		
		JButton bn_8 = new JButton("8");
		bn_8.setFont(new Font("Tahoma", Font.BOLD, 13));
		bn_8.setVisible(false);
		bn_8.setBounds(374, 0, 50, 23);
		panel_4.add(bn_8);
		
		JButton bn_7 = new JButton("7");
		bn_7.setFont(new Font("Tahoma", Font.BOLD, 13));
		bn_7.setVisible(false);
		bn_7.setBounds(321, 0, 50, 23);
		panel_4.add(bn_7);
		
		JButton bn_0 = new JButton("0");
		bn_0.setFont(new Font("Tahoma", Font.BOLD, 13));
		bn_0.setVisible(false);
		bn_0.setBounds(480, 0, 50, 23);
		panel_4.add(bn_0);
		
		JButton bn_9 = new JButton("9");
		bn_9.setFont(new Font("Tahoma", Font.BOLD, 13));
		bn_9.setVisible(false);
		bn_9.setBounds(427, 0, 50, 23);
		panel_4.add(bn_9);
		
		JButton bc_q = new JButton("Q");
		bc_q.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_q.setBounds(10, 27, 50, 23);
		panel_4.add(bc_q);
		
		JButton bc_w = new JButton("W");
		bc_w.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_w.setBounds(63, 27, 50, 23);
		panel_4.add(bc_w);
		
		JButton bc_e = new JButton("E");
		bc_e.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_e.setBounds(116, 27, 50, 23);
		panel_4.add(bc_e);
		
		JButton bc_r = new JButton("R");
		bc_r.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_w.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_r.setBounds(169, 27, 50, 23);
		panel_4.add(bc_r);
		
		JButton bc_t = new JButton("T");
		bc_t.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_t.setBounds(222, 27, 50, 23);
		panel_4.add(bc_t);
		
		JButton bc_y = new JButton("Y");
		bc_y.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_y.setBounds(278, 27, 50, 23);
		panel_4.add(bc_y);
		
		JButton bc_u = new JButton("U");
		bc_u.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_u.setBounds(331, 27, 50, 23);
		panel_4.add(bc_u);
		
		JButton bc_i = new JButton("I");
		bc_i.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_i.setBounds(384, 27, 50, 23);
		panel_4.add(bc_i);
		
		JButton bc_o = new JButton("O");
		bc_o.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_o.setBounds(437, 27, 50, 23);
		panel_4.add(bc_o);
		
		JButton bc_p = new JButton("P");
		bc_p.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_p.setBounds(490, 27, 50, 23);
		panel_4.add(bc_p);
		
		JButton bc_a = new JButton("A");
		bc_a.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_a.setBounds(20, 61, 50, 23);
		panel_4.add(bc_a);
		
		JButton bc_s = new JButton("S");
		bc_s.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_s.setBounds(73, 61, 50, 23);
		panel_4.add(bc_s);
		
		JButton bc_d = new JButton("D");
		bc_d.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_d.setBounds(126, 61, 50, 23);
		panel_4.add(bc_d);
		
		JButton bc_f = new JButton("F");
		bc_f.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_f.setBounds(179, 61, 50, 23);
		panel_4.add(bc_f);
		
		JButton bc_g = new JButton("G");
		bc_g.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_g.setBounds(232, 61, 50, 23);
		panel_4.add(bc_g);
		
		JButton bc_h = new JButton("H");
		bc_h.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_h.setBounds(288, 61, 50, 23);
		panel_4.add(bc_h);
		
		JButton bc_j = new JButton("J");
		bc_j.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_j.setBounds(341, 61, 50, 23);
		panel_4.add(bc_j);
		
		JButton bc_k = new JButton("K");
		bc_k.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_k.setBounds(394, 61, 50, 23);
		panel_4.add(bc_k);
		
		JButton bc_l = new JButton("L");
		bc_l.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_l.setBounds(447, 61, 50, 23);
		panel_4.add(bc_l);
		
		JButton bc_z = new JButton("Z");
		bc_z.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_z.setBounds(63, 95, 50, 23);
		panel_4.add(bc_z);
		
		JButton bc_x = new JButton("X");
		bc_x.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_x.setBounds(116, 95, 50, 23);
		panel_4.add(bc_x);
		
		JButton bc_c = new JButton("C");
		bc_c.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_c.setBounds(169, 95, 50, 23);
		panel_4.add(bc_c);
		
		JButton bc_v = new JButton("V");
		bc_v.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_v.setBounds(222, 95, 50, 23);
		panel_4.add(bc_v);
		
		JButton bc_b = new JButton("B");
		bc_b.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_b.setBounds(275, 95, 50, 23);
		panel_4.add(bc_b);
		
		JButton bc_n = new JButton("N");
		bc_n.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_n.setBounds(331, 95, 50, 23);
		panel_4.add(bc_n);
		
		JButton bc_m = new JButton("M");
		bc_m.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_m.setBounds(384, 95, 50, 23);
		panel_4.add(bc_m);
		
		JButton bc_space = new JButton("SPACE");
		bc_space.setFont(new Font("Tahoma", Font.BOLD, 13));
		bc_space.setBounds(212, 121, 89, 23);
		panel_4.add(bc_space);
		
		panel_1 = new JPanel();
		panel_1.setBounds(25, 10, 400, 118);
		contentPane.add(panel_1);
		panel_1.setLayout(null);
		
		textField = new JTextField();
		textField.setBounds(10, 11, 380, 96);
		panel_1.add(textField);
		textField.setColumns(10);
		
		ActionListener vd = new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				String command = e.getActionCommand();
				
				textField.setText(textField.getText() + command);
			}
		};
		bn_0.addActionListener(vd);
		bn_1.addActionListener(vd);
		bn_2.addActionListener(vd);
		bn_3.addActionListener(vd);
		bn_4.addActionListener(vd);
		bn_5.addActionListener(vd);
		bn_6.addActionListener(vd);
		bn_7.addActionListener(vd);
		bn_8.addActionListener(vd);
		bn_9.addActionListener(vd);
		
		bc_q.addActionListener(vd);
		bc_w.addActionListener(vd);
		bc_e.addActionListener(vd);
		bc_r.addActionListener(vd);
		bc_t.addActionListener(vd);
		bc_y.addActionListener(vd);
		bc_u.addActionListener(vd);
		bc_i.addActionListener(vd);
		bc_o.addActionListener(vd);
		bc_p.addActionListener(vd);
		
		bc_a.addActionListener(vd);
		bc_s.addActionListener(vd);
		bc_d.addActionListener(vd);
		bc_f.addActionListener(vd);
		bc_g.addActionListener(vd);
		bc_h.addActionListener(vd);
		bc_j.addActionListener(vd);
		bc_k.addActionListener(vd);
		bc_l.addActionListener(vd);
		
		bc_z.addActionListener(vd);
		bc_x.addActionListener(vd);
		bc_c.addActionListener(vd);
		bc_v.addActionListener(vd);
		bc_b.addActionListener(vd);
		bc_n.addActionListener(vd);
		bc_m.addActionListener(vd);
		bc_space.addActionListener(vd);
	}
}
