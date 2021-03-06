import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

//このクラスはjavaのawtを利用しています
public class AFP extends JFrame implements ActionListener{
  Graphics g;
  Object cmd;
  Color fillColor;
  Color strokeColor;
  
  AFP(String title,int x, int y, int width, int height) {
    super(title);
    fillColor=null;
    strokeColor=new Color(0,0,0);
    setBounds(x,y,width,height);
    setLayout(null);
    setDefaultCloseOperation(EXIT_ON_CLOSE);
    setVisible(true);
  }
  
  public void actionPerformed(ActionEvent e){
    cmd =e.getSource();
    action();
  }
  void action(){}
  
  public void paint(Graphics temp_g) {
    super.paint(temp_g);
    g=temp_g;
    this.draw();
  }
  
  void draw(){}
  void line(int x, int y, int width, int height){g.setColor(strokeColor);g.drawLine(x,y,width,height);}
  
  void rect(int x, int y, int width, int height){
    if(fillColor!=null){g.setColor(fillColor);g.fillRect(x,y,width+1,height+1);}
    if(strokeColor!=null){g.setColor(strokeColor);g.drawRect(x,y,width,height);}
  }
  
  void ellipse(int x, int y, int width, int height){
    println("a");
    if(fillColor!=null){g.setColor(fillColor);g.fillOval(x,y,width+1,height+1);}
    if(strokeColor!=null){g.setColor(strokeColor);g.drawOval(x,y,width,height);}
  }
  
  void background(int R,int G,int B){
    getContentPane().setBackground(new Color(R,G,B));
  }
  
  void background(int RGB){
    getContentPane().setBackground(new Color(RGB,RGB,RGB));
  }
  
  void fill(int R,int G,int B){fillColor=new Color(R,G,B);}
  
  void fill(int RGB){fillColor=new Color(RGB,RGB,RGB);}
  
  void noFill(){fillColor=null;}
  
  void stroke(int R,int G,int B){strokeColor=new Color(R,G,B);}
  
  void stroke(int RGB){strokeColor=new Color(RGB,RGB,RGB);}
  
  void noStroke(){strokeColor=null;}
  
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