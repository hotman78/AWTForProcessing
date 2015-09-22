class Sample extends AWT{
  Button button;
  TextField textField;
  Label text;
  
  Sample(){
    super("sample",200,200,400,300);
    button = button("サンプルです",0,150,100,20);
    textField = textField("",100,150,100,20);
    text = text("",0,170,100,20);
  }
  
  void draw(){
    background(255);
    fill(0);
    line(50,50,150,150);
    line(50,150,150,50);
    rect(70,70,60,60);
    ellipse(50,50,100,100);     
  }
  
  void action(){
    text.setText(textField.getText());
  }
}