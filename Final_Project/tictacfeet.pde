public class tictacfeet {
  //piece is the indicator of a circle = 1 ,x = -1 , or nothing = 0;
  private int board;
  private int x = 0;
  private int y = 0;
  private int piece = 0;
  

  tictacfeet(int b, int l, int h, int indicator) {
    board = b;
    x = l;
    y = h;
    piece = indicator;
  }

  public void drawTile() {
    if(piece == 1) 
      ellipse(x, y, 30, 30);
    else if(piece == -1) {
      line(x-10, y-10, x+10, y+10);
      line(x+10, y-10, x-10, y+10);
    }
  }

  public void clickcheck(int mousex, int mousey) {
    if(piece == 0 && mousex<= x+10 && mousex>= x-10 && mousey<= y+20 && mousey>= y-20) {     
      if(getPlayer() == false) {
        piece = 1;
        setPlayer(true);
      } else { 
        piece = -1; 
        setPlayer(false);
      }
    }
  }
  
  
  public void showPlayer() {
    if(getPlayer() == false)
      text("It is Player 1's turn", 250, 380);
    else if (getPlayer() == true)
      text("It is Player 2's turn", 250, 380);
  }
  
  public void winCondition() {
    //Individual winCheck
    for(int b = 0; b<toes.length; b++){
      if((toes[b][0][0].piece==toes[b][0][1].piece&&toes[b][0][1].piece==toes[b][0][2].piece&&toes[b][0][0].piece==1)||(toes[b][1][0].piece==toes[b][1][1].piece&&toes[b][1][1].piece==toes[b][1][2].piece&&toes[b][1][0].piece==1)||(toes[b][2][0].piece==toes[b][2][1].piece&&toes[b][2][1].piece==toes[b][2][2].piece&&toes[b][2][0].piece==1)||(toes[b][0][0].piece==toes[b][1][0].piece&&toes[b][1][0].piece==toes[b][2][0].piece&&toes[b][0][0].piece==1)||(toes[b][0][1].piece==toes[b][1][1].piece&&toes[b][1][1].piece==toes[b][2][1].piece&&toes[b][0][1].piece==1)||(toes[b][0][2].piece==toes[b][1][2].piece&&toes[b][1][2].piece==toes[b][2][2].piece&&toes[b][0][2].piece==1)||(toes[b][0][0].piece==toes[b][1][1].piece&&toes[b][1][1].piece==toes[b][2][2].piece&&toes[b][0][0].piece==1)||(toes[b][0][2].piece==toes[b][1][1].piece&&toes[b][1][1].piece==toes[b][2][0].piece&&toes[b][2][0].piece==1)){
        toes[b][0][0].board=1;
        ellipse(toes[b][1][1].x, toes[b][1][1].y, 100, 100);
      }
      else if((toes[b][0][0].piece==toes[b][0][1].piece&&toes[b][0][1].piece==toes[b][0][2].piece&&toes[b][0][0].piece==-1)||(toes[b][1][0].piece==toes[b][1][1].piece&&toes[b][1][1].piece==toes[b][1][2].piece&&toes[b][1][0].piece==-1)||(toes[b][2][0].piece==toes[b][2][1].piece&&toes[b][2][1].piece==toes[b][2][2].piece&&toes[b][2][0].piece==-1)||(toes[b][0][0].piece==toes[b][1][0].piece&&toes[b][1][0].piece==toes[b][2][0].piece&&toes[b][0][0].piece==-1)||(toes[b][0][1].piece==toes[b][1][1].piece&&toes[b][1][1].piece==toes[b][2][1].piece&&toes[b][0][1].piece==-1)||(toes[b][0][2].piece==toes[b][1][2].piece&&toes[b][1][2].piece==toes[b][2][2].piece&&toes[b][0][2].piece==-1)||(toes[b][0][0].piece==toes[b][1][1].piece&&toes[b][1][1].piece==toes[b][2][2].piece&&toes[b][0][0].piece==-1)||(toes[b][0][2].piece==toes[b][1][1].piece&&toes[b][1][1].piece==toes[b][2][0].piece&&toes[b][2][0].piece==-1)){
        toes[b][0][0].board=-1;
        line(toes[b][0][0].x, toes[b][0][0].y, toes[b][2][2].x, toes[b][2][2].y);
        line(toes[b][0][2].x, toes[b][0][2].y, toes[b][2][0].x, toes[b][2][0].y);
      }
      
      //Ultimate winCheck
      if((toes[0][0][0].board==toes[1][0][0].board&&toes[1][0][0].board==toes[2][0][0].board&&toes[0][0][0].board==1)||(toes[3][0][0].board==toes[4][0][0].board&&toes[4][0][0].board==toes[5][0][0].board&&toes[3][0][0].board==1)||(toes[6][0][0].board==toes[7][0][0].board&&toes[7][0][0].board==toes[8][0][0].board&&toes[6][0][0].board==1)||(toes[0][0][0].board==toes[3][0][0].board&&toes[3][0][0].board==toes[6][0][0].board&&toes[0][0][0].board==1)||(toes[1][0][0].board==toes[4][0][0].board&&toes[4][0][0].board==toes[7][0][0].board&&toes[1][0][0].board==1)||(toes[2][0][0].board==toes[5][0][0].board&&toes[5][0][0].board==toes[8][0][0].board&&toes[2][0][0].board==1)||(toes[0][0][0].board==toes[4][0][0].board&&toes[4][0][0].board==toes[8][0][0].board&&toes[0][0][0].board==1)||(toes[2][0][0].board==toes[4][0][0].board&&toes[4][0][0].board==toes[6][0][0].board&&toes[4][0][0].board==1)){
        noLoop();
        background(0, 202, 233);
        textSize(50);
        text("Player 1 wins!", 100, 250);
      }else if((toes[0][0][0].board==toes[1][0][0].board&&toes[1][0][0].board==toes[2][0][0].board&&toes[0][0][0].board==-1)||(toes[3][0][0].board==toes[4][0][0].board&&toes[4][0][0].board==toes[5][0][0].board&&toes[3][0][0].board==-1)||(toes[6][0][0].board==toes[7][0][0].board&&toes[7][0][0].board==toes[8][0][0].board&&toes[6][0][0].board==-1)||(toes[0][0][0].board==toes[3][0][0].board&&toes[3][0][0].board==toes[6][0][0].board&&toes[0][0][0].board==-1)||(toes[1][0][0].board==toes[4][0][0].board&&toes[4][0][0].board==toes[7][0][0].board&&toes[1][0][0].board==-1)||(toes[2][0][0].board==toes[5][0][0].board&&toes[5][0][0].board==toes[8][0][0].board&&toes[2][0][0].board==-1)||(toes[0][0][0].board==toes[4][0][0].board&&toes[4][0][0].board==toes[8][0][0].board&&toes[0][0][0].board==-1)||(toes[2][0][0].board==toes[4][0][0].board&&toes[4][0][0].board==toes[6][0][0].board&&toes[4][0][0].board==-1)){
        noLoop();
        background(0, 202, 233);
        textSize(50);
        text("Player 2 wins!", 100, 250);
      }
    }
  }
  
  public void drawBoard(int boardValue){
    line(toes[boardValue][0][0].x+20, toes[boardValue][0][0].y-10, toes[boardValue][2][0].x+20, toes[boardValue][2][0].y+10);
    line(toes[boardValue][0][1].x+20, toes[boardValue][0][1].y-10, toes[boardValue][2][1].x+20, toes[boardValue][2][1].y+10);
    line(toes[boardValue][0][0].x-10, toes[boardValue][0][0].y+20, toes[boardValue][0][2].x+10, toes[boardValue][0][2].y+20);
    line(toes[boardValue][1][0].x-10, toes[boardValue][1][0].y+20, toes[boardValue][1][2].x+10, toes[boardValue][1][2].y+20);
  }
}
