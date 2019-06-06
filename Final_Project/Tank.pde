public class Tank {
  private color c;
  private int facing = 0;
  Tank(color c1) {
    c=c1;
  }

  public void drawTank() {
    fill(c);
    if (facing == 0) {
      rect(x+15, y-25, 20, 50);   
      rect(x+10, y-30, 30, 20);
    } else if (facing == 1) {
      rect(x-25, y+15, 50, 20);   
      rect(x-30, y+10, 20, 30);
    } else if ( facing == 2) {
      rect(x+25, y+15, 50, 20);   
      rect(x+60, y+10, 20, 30);
    } else if (facing == 3) {
      rect(x+15, y+50, 20, 30);   
      rect(x+10, y+60, 30, 20);
    }
    rect(x, y, 50, 50);
  }
}
