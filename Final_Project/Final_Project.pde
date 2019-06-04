//tictacfeet
tictacfeet[][][] toes = new tictacfeet[9][3][3];
private boolean player;

//main page
private int page = 2;
private PImage board;
private PImage tank;

//tanks
Tank Red = new Tank(color(255,0,0));
Tank Orange = new Tank(color(255, 171, 0));
Tank Yellow= new Tank(color(255, 255, 0)); 
Tank Green = new Tank(color(0, 255, 0));
Tank Blue= new Tank(color(0, 0, 255));
Tank Indigo = new Tank(color(75, 0, 130));
Tank Violet = new Tank(color(238, 130, 238));
Tank Yousif = new Tank(color(111, 76, 7));
private int x = 0;
private int y =  0;

void setup() {
//main setup
  size(500, 500);
  board = loadImage("tictacfeet.png");
  tank = loadImage("tank.jpeg");
  
//tictacfeet setup

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
  
//tank setup
}

void mouseClicked() {
  if(page==0){
    if(mouseX>=260&&mouseX<=430&&mouseY>=230&&mouseY<=400)
      page=1;
    else if(mouseX>=70&&mouseX<=240&&mouseY>=230&&mouseY<=400)
      page=2;
  }else if(page==1)
  for(int b = 0; b<toes.length; b++)
    for(int x = 0; x<toes[b].length; x++)
      for(int y = 0; y<toes[b][x].length; y++){
        toes[b][x][y].clickcheck(mouseX, mouseY);
      }
}

void keyPressed(){
  if (keyCode == 38 ) {
    y= y-10;
    facing = 0;
  } else if (keyCode == 40) {
    y = y+10;
    facing = 3;
  } else if (keyCode == 37) {
    x=x-10;
    facing = 1;
  } else if (keyCode == 39) {
    x=x+10;
    facing = 2;
  }
}
//player access
public boolean getPlayer(){
  return player;
}
public void setPlayer(boolean p){
  player=p;
}

//page access
public int getPage(){
  return page;
}
public void setPage(int p){
  page=p;
}

void draw() {
  if(page==0){
    background(0);
    text(mouseX, mouseX, mouseY);
    text(mouseY, mouseX+25, mouseY);
    textSize(25);
    text("Welcome to DonkMonk: \n   Choose your game!", 100, 50);
    textSize(12);
    image(board, 260, 230, 170, 170);
    image(tank, 70, 230, 170, 170);
  }else if(page==1){
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
  }else if(page==2){
    background(30);
    fill(255, 0, 0);
    rect(11, 440, 50, 50);
    fill(255, 171, 0);
    rect(72, 440, 50, 50);
    fill(255, 255, 0);
    rect(133, 440, 50, 50);
    fill(0, 255, 0);
    rect(194, 440, 50, 50);
    fill(0, 0, 255);
    rect(255, 440, 50, 50);
    fill(75, 0, 130);
    rect(316, 440, 50, 50);
    fill(238, 130, 238);
    rect(377, 440, 50, 50);
    fill(111, 76, 7);
    rect(439, 440, 50, 50);
    fill(255);
    text(mouseX, mouseX, mouseY);
    text(mouseY, mouseX+25, mouseY);
  }else if(page==3){
    fill(255);
    rect(0,0,500,500);
    Red.drawTank();
  }
}
