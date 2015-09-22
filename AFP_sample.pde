Sample sample;

void settings(){
  sample=new Sample();
}

void draw(){
  sample.draw();
}
class Sample extends AFP{
  Button button;
  TextField textField;
  Label text;
  
  Sample(){
    super("sample",200,200,400,300);
    button = button("ボタン",0,150,100,20);
    textField = textField("テキスト",100,150,100,20);
    text = text("",0,170,100,20);
    background(34,195,80);
  }
  
  void draw(){
    stroke(178,0,8);
    line(50,50,150,150);
    line(50,150,150,50);
    fill(235,121,136);
    rect(70,70,60,60);
    noFill();
    ellipse(50,50,100,100);
  }
  
  void action(){
    text.setText(textField.getText());
  }
}