import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

//このクラスはjavaのawtを利用しています
public class AWT extends JFrame implements ActionListener{
  Graphics g;
  Object cmd;
  AWT(String title,int x, int y, int width, int height) {
    super(title);
    setBounds(x,y,width,height);
    setLayout(null);
    setVisible(true);
    setDefaultCloseOperation(EXIT_ON_CLOSE);
  }
  public void actionPerformed(ActionEvent e){
    cmd =e.getSource();
    action();
  }
  void action(){}
  
  public void paint(Graphics temp_g) {
    g=temp_g;
    this.draw();
  }
  void draw(){}
  void line(int x, int y, int width, int height){g.drawLine(x,y,width,height);};
  void rect(int x, int y, int width, int height){g.drawRect(x,y,width,height);};
  void ellipse(int x, int y, int width, int height){g.drawOval(x,y,width,height);};
  void background(int R,int G,int B){
    g.setColor(new Color(R,G,B));
    g.fillRect(0,0,getSize().width,getSize().height);
  }
  void background(int RGB){
    g.setColor(new Color(RGB,RGB,RGB));
    g.fillRect(0,0,getSize().width,getSize().height);
  }
  void fill(int R,int G,int B){g.setColor(new Color(R,G,B));}
  void fill(int RGB){g.setColor(new Color(RGB,RGB,RGB));}
  Button button(String text,int x, int y, int width, int height){
    Button button;
    button=new Button(text);
    button.setBounds(x,y,width,height);
    button.addActionListener(this);
    add(button);
    return button;
  }
  Label text(String text,int x, int y, int width, int height){
    Label label = new Label(text);
    label.setBounds(x,y,width,height);
    add(label);
    return label;
  }
  TextField textField(String text,int x, int y, int width, int height){
    TextField textField = new TextField(text);
    textField.setBounds(x,y,width,height);
    textField.addActionListener(this);
    add(textField);
    return textField;
  }
  
  TextArea textArea (String text,int x, int y, int width, int height){
    TextArea textArea = new TextArea(text);
    textArea.setBounds(x,y,width,height);
    add(textArea);
    return textArea;
  }
}