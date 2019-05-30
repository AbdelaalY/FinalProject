tictacfeet[][][] toes = new tictacfeet[9][3][3];
private boolean player;

void setup() {
  size(500, 500);
//[board][row][column]
  toes[0][0][0] = new tictacfeet(0, 20, 20, 0);
  toes[0][0][1] = new tictacfeet(0, 60, 20, 0);
  toes[0][0][2] = new tictacfeet(0, 100, 20, 0);
  toes[0][1][0] = new tictacfeet(0, 20, 60, 0);
  toes[0][1][1] = new tictacfeet(0, 60, 60, 0);
  toes[0][1][2] = new tictacfeet(0, 100, 60, 0);
  toes[0][2][0] = new tictacfeet(0, 20, 100, 0);
  toes[0][2][1] = new tictacfeet(0, 60, 100, 0);
  toes[0][2][2] = new tictacfeet(0, 100, 100, 0);
  
  toes[1][0][0] = new tictacfeet(0, 140, 20, 0);
  toes[1][0][1] = new tictacfeet(0, 180, 20, 0);
  toes[1][0][2] = new tictacfeet(0, 220, 20, 0);
  toes[1][1][0] = new tictacfeet(0, 140, 60, 0);
  toes[1][1][1] = new tictacfeet(0, 180, 60, 0);
  toes[1][1][2] = new tictacfeet(0, 220, 60, 0);
  toes[1][2][0] = new tictacfeet(0, 140, 100, 0);
  toes[1][2][1] = new tictacfeet(0, 180, 100, 0);
  toes[1][2][2] = new tictacfeet(0, 220, 100, 0);
  
  toes[2][0][0] = new tictacfeet(0, 260, 20, 0);
  toes[2][0][1] = new tictacfeet(0, 300, 20, 0);
  toes[2][0][2] = new tictacfeet(0, 340, 20, 0);
  toes[2][1][0] = new tictacfeet(0, 260, 60, 0);
  toes[2][1][1] = new tictacfeet(0, 300, 60, 0);
  toes[2][1][2] = new tictacfeet(0, 340, 60, 0);
  toes[2][2][0] = new tictacfeet(0, 260, 100, 0);
  toes[2][2][1] = new tictacfeet(0, 300, 100, 0);
  toes[2][2][2] = new tictacfeet(0, 340, 100, 0);
  
  toes[3][0][0] = new tictacfeet(0, 20, 140, 0);
  toes[3][0][1] = new tictacfeet(0, 60, 140, 0);
  toes[3][0][2] = new tictacfeet(0, 100, 140, 0);
  toes[3][1][0] = new tictacfeet(0, 20, 180, 0);
  toes[3][1][1] = new tictacfeet(0, 60, 180, 0);
  toes[3][1][2] = new tictacfeet(0, 100, 180, 0);
  toes[3][2][0] = new tictacfeet(0, 20, 220, 0);
  toes[3][2][1] = new tictacfeet(0, 60, 220, 0);
  toes[3][2][2] = new tictacfeet(0, 100, 220, 0);
  
  toes[4][0][0] = new tictacfeet(0, 140, 140, 0);
  toes[4][0][1] = new tictacfeet(0, 180, 140, 0);
  toes[4][0][2] = new tictacfeet(0, 220, 140, 0);
  toes[4][1][0] = new tictacfeet(0, 140, 180, 0);
  toes[4][1][1] = new tictacfeet(0, 180, 180, 0);
  toes[4][1][2] = new tictacfeet(0, 220, 180, 0);
  toes[4][2][0] = new tictacfeet(0, 140, 220, 0);
  toes[4][2][1] = new tictacfeet(0, 180, 220, 0);
  toes[4][2][2] = new tictacfeet(0, 220, 220, 0);
  
  toes[5][0][0] = new tictacfeet(0, 260, 140, 0);
  toes[5][0][1] = new tictacfeet(0, 300, 140, 0);
  toes[5][0][2] = new tictacfeet(0, 340, 140, 0);
  toes[5][1][0] = new tictacfeet(0, 260, 180, 0);
  toes[5][1][1] = new tictacfeet(0, 300, 180, 0);
  toes[5][1][2] = new tictacfeet(0, 340, 180, 0);
  toes[5][2][0] = new tictacfeet(0, 260, 220, 0);
  toes[5][2][1] = new tictacfeet(0, 300, 220, 0);
  toes[5][2][2] = new tictacfeet(0, 340, 220, 0);
  
  toes[6][0][0] = new tictacfeet(0, 20, 260, 0);
  toes[6][0][1] = new tictacfeet(0, 60, 260, 0);
  toes[6][0][2] = new tictacfeet(0, 100, 260, 0);
  toes[6][1][0] = new tictacfeet(0, 20, 300, 0);
  toes[6][1][1] = new tictacfeet(0, 60, 300, 0);
  toes[6][1][2] = new tictacfeet(0, 100, 300, 0);
  toes[6][2][0] = new tictacfeet(0, 20, 340, 0);
  toes[6][2][1] = new tictacfeet(0, 60, 340, 0);
  toes[6][2][2] = new tictacfeet(0, 100, 340, 0);
  
  toes[7][0][0] = new tictacfeet(0, 140, 260, 0);
  toes[7][0][1] = new tictacfeet(0, 180, 260, 0);
  toes[7][0][2] = new tictacfeet(0, 220, 260, 0);
  toes[7][1][0] = new tictacfeet(0, 140, 300, 0);
  toes[7][1][1] = new tictacfeet(0, 180, 300, 0);
  toes[7][1][2] = new tictacfeet(0, 220, 300, 0);
  toes[7][2][0] = new tictacfeet(0, 140, 340, 0);
  toes[7][2][1] = new tictacfeet(0, 180, 340, 0);
  toes[7][2][2] = new tictacfeet(0, 220, 340, 0);
  
  toes[8][0][0] = new tictacfeet(0, 260, 260, 0);
  toes[8][0][1] = new tictacfeet(0, 300, 260, 0);
  toes[8][0][2] = new tictacfeet(0, 340, 260, 0);
  toes[8][1][0] = new tictacfeet(0, 260, 300, 0);
  toes[8][1][1] = new tictacfeet(0, 300, 300, 0);
  toes[8][1][2] = new tictacfeet(0, 340, 300, 0);
  toes[8][2][0] = new tictacfeet(0, 260, 340, 0);
  toes[8][2][1] = new tictacfeet(0, 300, 340, 0);
  toes[8][2][2] = new tictacfeet(0, 340, 340, 0);
}

void mouseClicked() {   
  for(int b = 0; b<toes.length; b++)
    for(int x = 0; x<toes[b].length; x++)
      for(int y = 0; y<toes[b][x].length; y++)
        toes[b][x][y].clickcheck(mouseX, mouseY);
}
public boolean getPlayer(){
  return player;
}

public void setPlayer(boolean p){
  player=p;
}

void draw() {
  background(0, 202, 233);
  text(mouseX, mouseX, mouseY);
  text(mouseY, mouseX+25, mouseY);
  toes[0][0][0].showPlayer();
  //board setup
  strokeWeight(3);
  line(120, 10, 120, 350);
  line(240, 10, 240, 350);
  line(10, 120, 350, 120);
  line(10, 240, 350, 240);
  strokeWeight(1);
  //things that need to happen per board/tile
  for(int b = 0; b<toes.length; b++){
    toes[b][0][0].drawBoard(b);
    toes[b][0][0].winCondition();
    for (int x = 0; x<toes[b].length; x++)
      for(int y = 0; y<toes[b][x].length; y++)
        toes[b][x][y].drawTile();
  }
}
