tictacfeet One = new tictacfeet(20,20,false);
tictacfeet Two = new tictacfeet(60,20,false);
tictacfeet Three = new tictacfeet(100,20,false);
tictacfeet Four = new tictacfeet(20,20,false);
tictacfeet Five = new tictacfeet(20,20,false);
tictacfeet Six = new tictacfeet(20,20,false);
tictacfeet Seven = new tictacfeet(20,20,false);
tictacfeet Eight = new tictacfeet(20,20,false);
tictacfeet Nine = new tictacfeet(20,20,false);

void setup(){
  
}

public class tictacfeet{
  private int x = 0;
  private int y = 0;
  private boolean bruh = false;

tictacfeet(int l, int h, boolean thing){
x = l;
y = h;
bruh = thing;
}

public void show(){
if(bruh == false){}
ellipse(x,y,30,30);
}
}
void draw(){
One.show();
Two.show();
Three.show();
}
