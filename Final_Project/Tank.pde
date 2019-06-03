public class Tank {
  private color c;

  Tank(color c1) {
   c=c1;
  }

  public void drawTank() {
    fill(c);
    if(facing == 0){   
    rect(x+15,y-25,20,50);   
    rect(x+10, y-30, 30, 20);    
    } else if(facing == 1){
    rect(x-25,y+15,50,20);   
    rect(x-10, y-30, 20, 30);   
    }
    rect(x, y, 50, 50);
  }
}
