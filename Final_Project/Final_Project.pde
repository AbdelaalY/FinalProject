
tictacfeet[][][] toes = new tictacfeet[9][3][3];
boolean player = false;

void setup() {
  size(500, 500);
  //[board][row][column]
  toes[0][0][0] = new tictacfeet(0, 20, 20, 0, 0, 0);
  toes[0][0][1] = new tictacfeet(0, 60, 20, 0, 40, 0);
  toes[0][0][2] = new tictacfeet(0, 100, 20, 0, 80, 0);
  toes[0][1][0] = new tictacfeet(0, 20, 60, 0, 0, 40);
  toes[0][1][1] = new tictacfeet(0, 60, 60, 0, 40, 40);
  toes[0][1][2] = new tictacfeet(0, 100, 60, 0, 80, 40);
  toes[0][2][0] = new tictacfeet(0, 20, 100, 0, 0, 80);
  toes[0][2][1] = new tictacfeet(0, 60, 100, 0, 40, 80);
  toes[0][2][2] = new tictacfeet(0, 100, 100, 0, 80, 80);

  toes[1][0][0] = new tictacfeet(1, 140, 20, 0, 120, 0);
  toes[1][0][1] = new tictacfeet(1, 180, 20, 0, 160, 0);
  toes[1][0][2] = new tictacfeet(1, 220, 20, 0, 200, 0);
  toes[1][1][0] = new tictacfeet(1, 140, 60, 0, 120, 40);
  toes[1][1][1] = new tictacfeet(1, 180, 60, 0, 160, 40);
  toes[1][1][2] = new tictacfeet(1, 220, 60, 0, 200, 40);
  toes[1][2][0] = new tictacfeet(1, 140, 100, 0, 120,80);
  toes[1][2][1] = new tictacfeet(1, 180, 100, 0, 160, 80);
  toes[1][2][2] = new tictacfeet(1, 220, 100, 0, 200, 80);

  toes[2][0][0] = new tictacfeet(2, 260, 20, 0, 240, 0);
  toes[2][0][1] = new tictacfeet(2, 300, 20, 0, 280, 0);
  toes[2][0][2] = new tictacfeet(2, 340, 20, 0, 320, 0);
  toes[2][1][0] = new tictacfeet(2, 260, 60, 0, 240, 40);
  toes[2][1][1] = new tictacfeet(2, 300, 60, 0, 280, 40);
  toes[2][1][2] = new tictacfeet(2, 340, 60, 0, );
  toes[2][2][0] = new tictacfeet(2, 260, 100, 0);
  toes[2][2][1] = new tictacfeet(2, 300, 100, 0);
  toes[2][2][2] = new tictacfeet(2, 340, 100, 0);

  toes[3][0][0] = new tictacfeet(3, 20, 140, 0);
  toes[3][0][1] = new tictacfeet(3, 60, 140, 0);
  toes[3][0][2] = new tictacfeet(3, 100, 140, 0);
  toes[3][1][0] = new tictacfeet(3, 20, 180, 0);
  toes[3][1][1] = new tictacfeet(3, 60, 180, 0);
  toes[3][1][2] = new tictacfeet(3, 100, 180, 0);
  toes[3][2][0] = new tictacfeet(3, 20, 220, 0);
  toes[3][2][1] = new tictacfeet(3, 60, 220, 0);
  toes[3][2][2] = new tictacfeet(3, 100, 220, 0);

  toes[4][0][0] = new tictacfeet(4, 140, 140, 0);
  toes[4][0][1] = new tictacfeet(4, 180, 140, 0);
  toes[4][0][2] = new tictacfeet(4, 220, 140, 0);
  toes[4][1][0] = new tictacfeet(4, 140, 180, 0);
  toes[4][1][1] = new tictacfeet(4, 180, 180, 0);
  toes[4][1][2] = new tictacfeet(4, 220, 180, 0);
  toes[4][2][0] = new tictacfeet(4, 140, 220, 0);
  toes[4][2][1] = new tictacfeet(4, 180, 220, 0);
  toes[4][2][2] = new tictacfeet(4, 220, 220, 0);

  toes[5][0][0] = new tictacfeet(5, 260, 140, 0);
  toes[5][0][1] = new tictacfeet(5, 300, 140, 0);
  toes[5][0][2] = new tictacfeet(5, 340, 140, 0);
  toes[5][1][0] = new tictacfeet(5, 260, 180, 0);
  toes[5][1][1] = new tictacfeet(5, 300, 180, 0);
  toes[5][1][2] = new tictacfeet(5, 340, 180, 0);
  toes[5][2][0] = new tictacfeet(5, 260, 220, 0);
  toes[5][2][1] = new tictacfeet(5, 300, 220, 0);
  toes[5][2][2] = new tictacfeet(5, 340, 220, 0);

  toes[6][0][0] = new tictacfeet(6, 20, 260, 0);
  toes[6][0][1] = new tictacfeet(6, 60, 260, 0);
  toes[6][0][2] = new tictacfeet(6, 100, 260, 0);
  toes[6][1][0] = new tictacfeet(6, 20, 300, 0);
  toes[6][1][1] = new tictacfeet(6, 60, 300, 0);
  toes[6][1][2] = new tictacfeet(6, 100, 300, 0);
  toes[6][2][0] = new tictacfeet(6, 20, 340, 0);
  toes[6][2][1] = new tictacfeet(6, 60, 340, 0);
  toes[6][2][2] = new tictacfeet(6, 100, 340, 0);

  toes[7][0][0] = new tictacfeet(7, 140, 260, 0);
  toes[7][0][1] = new tictacfeet(7, 180, 260, 0);
  toes[7][0][2] = new tictacfeet(7, 220, 260, 0);
  toes[7][1][0] = new tictacfeet(7, 140, 300, 0);
  toes[7][1][1] = new tictacfeet(7, 180, 300, 0);
  toes[7][1][2] = new tictacfeet(7, 220, 300, 0);
  toes[7][2][0] = new tictacfeet(7, 140, 340, 0);
  toes[7][2][1] = new tictacfeet(7, 180, 340, 0);
  toes[7][2][2] = new tictacfeet(7, 220, 340, 0);

  toes[8][0][0] = new tictacfeet(8, 260, 260, 0);
  toes[8][0][1] = new tictacfeet(8, 300, 260, 0);
  toes[8][0][2] = new tictacfeet(8, 340, 260, 0);
  toes[8][1][0] = new tictacfeet(8, 260, 300, 0);
  toes[8][1][1] = new tictacfeet(8, 300, 300, 0);
  toes[8][1][2] = new tictacfeet(8, 340, 300, 0);
  toes[8][2][0] = new tictacfeet(8, 260, 340, 0);
  toes[8][2][1] = new tictacfeet(8, 300, 340, 0);
  toes[8][2][2] = new tictacfeet(8, 340, 340, 0);
  */
}



void mouseClicked() {   
  for (int b = 0; b<toes.length; b++)
    for (int x = 0; x<toes[b].length; x++)
      for (int y = 0; y<toes[b][x].length; y++)
        toes[b][x][y].clickcheck(mouseX, mouseY);
}

void draw() {
  background(200);
  toes[0][0][0].showPlayer();
  for (int b = 0; b<toes.length; b++)
    for (int x = 0; x<toes[b].length; x++)
      for (int y = 0; y<toes[b][x].length; y++)
        toes[b][x][y].show();
}
