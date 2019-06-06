public class shell {
  private int shellx = 0;
  private int shelly = 0;
  private int face = 0;
  int vel = 2;
  boolean on = true;

  shell(int x, int y, int f) {
    shellx = x;
    shelly = y;
    face = f;
  }

  public void drawShell() {
    ellipse(shellx, shelly, 20, 20);

    if (face == 0)
      shelly-=vel;
    else
      if (face == 1)
        shellx-=vel;
      else
        if (face == 2)
          shellx+=vel;
        else
          if (face == 3)
            shelly+=vel;
  }
}
