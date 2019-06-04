public class Tank {
  private color c;

  Tank(color c1) {
   c=c1;
  }

  public void drawTank() {
    fill(c);
    rect(x, y, 50, 50);
  }
}
