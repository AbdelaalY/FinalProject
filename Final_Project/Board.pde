private int one = 1, two = 0, player = 1;
import java.util.Scanner;
private int a=0, b=0, c=0, d=0, e=0, f=0, g=0, h=0, i=0;

void setup(){
}
void draw(){
  if(one>two){
    System.out.println(a+" "+b+" "+c);
    System.out.println(d+" "+e+" "+f);
    System.out.println(g+" "+h+" "+i);
    System.out.println("Player " + player + "'s Turn");
    two++;
  }
}
public void keyPressed(){
  if(key=='7'&&a==0){
    a=player;
  if(player==1){
    player=2;
  }else{
    player=1;
  }
  one++;
  }
  
  if(key=='8'&&b==0){
    b=player;
  if(player==1){
    player=2;
  }else{
    player=1;
  }
  one++;
  }
  
  if(key=='9'&&c==0){
    c=player;
  if(player==1){
    player=2;
  }else{
    player=1;
  }
  one++;
  }
  
  if(key=='4'&&d==0){
    d=player;
  if(player==1){
    player=2;
  }else{
    player=1;
  }
  one++;
  }
  
  if(key=='5'&&e==0){
    e=player;
  if(player==1){
    player=2;
  }else{
    player=1;
  }
  one++;
  }
  
  if(key=='6'&&f==0){
    f=player;
  if(player==1){
    player=2;
  }else{
    player=1;
  }
  one++;
  }
  
  if(key=='1'&&g==0){
    g=player;
  if(player==1){
    player=2;
  }else{
    player=1;
  }
  one++;
  }
  
  if(key=='2'&&h==0){
    h=player;
  if(player==1){
    player=2;
  }else{
    player=1;
  }
  one++;
  }
  
  if(key=='3'&&i==0){
    i=player;
  if(player==1){
    player=2;
  }else{
    player=1;
  }
  one++;
  }
  winCondition();
}
public void winCondition(){
  if(a==b&&a==c||a==b&&a==c||a==b&&a==c){
    System.out.println("Player "+player+" wins!");
    one--;
  }
}
