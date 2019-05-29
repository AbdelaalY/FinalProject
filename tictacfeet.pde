public class tictacfeet {
  //piece is the indicator of a circle = 1 ,x = -1 , or nothing = 0
  //x is the x cord of the piece; use your brain for y
  //squareX 
  //sq
  private int board = 0;
  private int x = 0;
  private int y = 0;
  private int piece = 0;
  private int squareX = 0;
  private int squareY = 0;

  tictacfeet(int b, int l, int h, int thing, int ccX, int ccY) {
    board = b;
    x = l;
    y = h;
    piece = thing;
    squareX = ccX;
    squareY = ccY;
  }

  public void show() {
    if (piece == 1) 
      ellipse(x, y, 30, 30);
    else if (piece == -1) {
      line(x-10, y-10, x+10, y+10);
      line(x+10, y-10, x-10, y+10);
    }
  }

  public void clickcheck(int mousex, int mousey) {
    if (piece == 0 && mousex<=squareX+20 && mousex>= x && mousey<= squareY+20 && mousey>= squareY ) {     
      if (player == false) {
        piece = 1;
        player = true;
      } else { 
        piece = -1; 
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
