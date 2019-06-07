# Project Title and purpose - DonkMonk. To create games for fun

This project is a couple of games that all work off of one program. There is ultimate tictactoe that as of writing this works completely, and then theres Tank which as of writing this does not work completely. Originaly, we planned on creating an AI to play tictactoe against, but we decided it was a little past our time limit. Instead we started work on Tank.

### Difficulties or opportunities you encountered along the way.

I would say the toughest part was setting up a win condition for tictactoe. At first we thought we would have to hard code every win possability with some really long if statements. After a few days of thinking it through, we realized we could use our triple nested for loop that we already created to draw the peices based on their values to also check the win conditon for every piece. This allowed us to only use 2 if statments instead of 2 per board like we originally thought we would need. We also had a few problems with our click detection and having the player switch after they take a turn, but those were relatively easy fixes.

### Most interesting piece of your code and explanation for what it does.

```Java
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
```
This is the code that detects if the peices are placed correctly as to activate the win condition. Its interesting because it uses a for loop in the draw method to run through every board to constantly check for a win condition.
## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

* **Jacob Samuelson, Yousif Abdelaal** 

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
