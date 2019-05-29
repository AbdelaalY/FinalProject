public class tictacfeet {
  //bruh is the indicator of a circle = 1 ,x = -1 , or nothing = 0;
  private int board;
  private int x = 0;
  private int y = 0;
  private int bruh = 0;
  private boolean player = false;

  tictacfeet(int b, int l, int h, int thing) {
    board = b;
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
      text("It is Player 1's turn", 250, 380);
    else if (player == true)
      text("It is Player 2's turn", 250, 380);
  }
  
  public void winCondition() {
    for(int b = 0; b<toes.length; b++){
      if(((toes[b][0][0].bruh==toes[b][0][1].bruh&&toes[b][0][1].bruh==toes[b][0][2].bruh)&&toes[b][0][0].bruh!=0)||((toes[b][1][0].bruh==toes[b][1][1].bruh&&toes[b][1][1].bruh==toes[b][1][2].bruh)&&toes[b][1][0].bruh!=0)||((toes[b][2][0].bruh==toes[b][2][1].bruh&&toes[b][2][1].bruh==toes[b][2][2].bruh)&&toes[b][2][0].bruh!=0)||((toes[b][0][0].bruh==toes[b][1][0].bruh&&toes[b][2][0].bruh==toes[b][2][0].bruh)&&toes[b][0][0].bruh!=0)||((toes[b][0][1].bruh==toes[b][1][1].bruh&&toes[b][2][1].bruh==toes[b][2][1].bruh)&&toes[b][0][1].bruh!=0)||((toes[b][0][2].bruh==toes[b][1][2].bruh&&toes[b][2][2].bruh==toes[b][2][2].bruh)&&toes[b][0][2].bruh!=0)||((toes[b][0][0].bruh==toes[b][1][1].bruh&&toes[b][0][0].bruh==toes[b][2][2].bruh)&&toes[b][0][0].bruh!=0)||((toes[b][0][2].bruh==toes[b][1][1].bruh&&toes[b][2][0].bruh==toes[b][2][0].bruh)&&toes[b][0][2].bruh!=0)&&toes[b][x][y].bruh==1)
        ellipse(toes[b][1][1].x, toes[b][1][1].y, 100, 100);
      else if(((toes[b][0][0].bruh==toes[b][0][1].bruh&&toes[b][0][1].bruh==toes[b][0][2].bruh)&&toes[b][0][0].bruh!=0)||((toes[b][1][0].bruh==toes[b][1][1].bruh&&toes[b][1][1].bruh==toes[b][1][2].bruh)&&toes[b][1][0].bruh!=0)||((toes[b][2][0].bruh==toes[b][2][1].bruh&&toes[b][2][1].bruh==toes[b][2][2].bruh)&&toes[b][2][0].bruh!=0)||((toes[b][0][0].bruh==toes[b][1][0].bruh&&toes[b][2][0].bruh==toes[b][2][0].bruh)&&toes[b][0][0].bruh!=0)||((toes[b][0][1].bruh==toes[b][1][1].bruh&&toes[b][2][1].bruh==toes[b][2][1].bruh)&&toes[b][0][1].bruh!=0)||((toes[b][0][2].bruh==toes[b][1][2].bruh&&toes[b][2][2].bruh==toes[b][2][2].bruh)&&toes[b][0][2].bruh!=0)||((toes[b][0][0].bruh==toes[b][1][1].bruh&&toes[b][0][0].bruh==toes[b][2][2].bruh)&&toes[b][0][0].bruh!=0)||((toes[b][0][2].bruh==toes[b][1][1].bruh&&toes[b][2][0].bruh==toes[b][2][0].bruh)&&toes[b][0][2].bruh!=0)&&toes[b][x][y].bruh==-1){
        line(toes[b][0][0].x, toes[b][0][0].y, toes[b][2][2].x, toes[b][2][2].y);
        line(toes[b][0][2].x, toes[b][0][2].y, toes[b][2][0].x, toes[b][2][0].y);
      }
    }
  }
}
