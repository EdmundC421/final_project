public class board {
  public boolean vsAi;
  public color p1Color; //color for player (vs ai)
  public color p2Color; //color for ai
  public boolean p1Standby; //waiting for p1 to select a piece
  public boolean p1PieceSelected; //piece is selected by p1, waiting for piece placement or deselection
  public boolean p2Standby; //waiting for p2 to select a piece
  public boolean p2PieceSelected; //piece is selected by p1, waiting for piece placement or deselection
  public boolean aiTurn; //ai's turn

  public int[][] boardColors;
  public piece[][] pieces;
  public final int SQUARE_SIZE = 100;
  void grid() {
    int counter = 0;
    int columnNum;
    //stroke(500,500,500);
    noStroke();
    for (int rowNum = 0; rowNum < 8; rowNum++) {
      for (columnNum = 0; columnNum < 8; columnNum++) {
        if (counter++ % 2 == 0) {
          fill(#B6C5CE);
        } else {
          fill(#848E9A);
        }
        rect(columnNum*SQUARE_SIZE, rowNum*SQUARE_SIZE, SQUARE_SIZE, SQUARE_SIZE);
      }
      counter--;
    }
  }

  public board(color playerColor, boolean versusAi) {
    if(playerColor == color(0,0,0)){
      p1Color = color(#FFFFFF);
      p1Standby = true;
      p1PieceSelected = false;
      p2StandBy = false;
      p2PieceSelected = false;
    } else {
      p1Color = color(#000000);
      p1Standby = false;
      p1PieceSelected =false;
      if(versusAi == false){
        p2Standby = true;
        p2PieceSelected = false;
        aiTurn = false;
      } else {
        aiTurn = true;
        p2Standby = false;
        p2PieceSelected = false;
      }   
    }
  }
    
    
  }
