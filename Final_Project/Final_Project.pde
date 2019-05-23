
tictacfeet[][] toes = new tictacfeet[3][3];
boolean player = false;

void setup() {
  size(500, 500);

  toes[0][0] = new tictacfeet(20, 20, 0);
  toes[0][1]= new tictacfeet(60, 20, 0);
  toes[0][2]= new tictacfeet(100, 20, 0);
  toes[1][0]= new tictacfeet(20, 60, 0);
  toes[1][1]= new tictacfeet(60, 60, 0);
  toes[1][2] = new tictacfeet(100, 60, 0);
  toes[2][0] = new tictacfeet(20, 100, 0);
  toes[2][1] = new tictacfeet(60, 100, 0);
  toes[2][2] = new tictacfeet(100, 100, 0);
}

public class tictacfeet {
  //bruh is the indicator of a circle = 1 ,x = -1 , or nothing = 0;
  private int x = 0;
  private int y = 0;
  private int bruh = 0;

  tictacfeet(int l, int h, int thing) {
    x = l;
    y = h;
    bruh = thing;
  }

  public void show() {
    if (bruh == 1) 
      ellipse(x, y, 30, 30);
    else if (bruh == -1) {
      line(x-10, y-10, x+10, y+10);
      line(x+10, y-10, x-10, y+10);
    }
  }

  public void clickcheck(int mousex, int mousey) {
    if (bruh == 0 && mousex<= x+23 && mousex>= x-23 && mousey<= y+23 && mousey>= y-23 ) {     
      if (player == false) {
        bruh = 1;
        player = true;
      } else { 
        bruh = -1; 
        player = false;
      }
    }
  }
  
  
  public void showPlayer() {
    if (player == false)
      text("It is Player 1's turn", 250, 250);
    else if (player== true)
      text("It is Player 2's turn", 250, 250);
  }
}

void mouseClicked() {   
  
  for (int x = 0; x<toes.length; x++)
  for(int y = 0; y<toes[x].length; y++)
    toes[x][y].clickcheck(mouseX, mouseY);
}

void draw() {
  background(200);
  toes[0][0].showPlayer();
  for (int x = 0; x<toes.length; x++)
  for(int y = 0; y<toes[x].length; y++)
    toes[x][y].show();
  }
