class piece {
  PVector location;
  color pieceColor;

  public piece(color pieceColor) {
    this.pieceColor = pieceColor;
  }
  public void move(int x, int y) {
    location.x = x;
    location.y = y;
  }
  
}
//---------------------------------------------------------------------------------------
class rook extends piece {
  PVector[] allMoves;

  public rook(color pieceColor) {
    super(pieceColor);
  }
}
//---------------------------------------------------------------------------------------
class ai {
}
//---------------------------------------------------------------------------------------
class bishop extends piece {
  PVector[] allMoves;

  public bishop(color pieceColor) {
    super(pieceColor);
  }
}
//---------------------------------------------------------------------------------------
class king extends piece {
  PVector[] allMoves;

  public king(color pieceColor) {
    super(pieceColor);
  }
}
//---------------------------------------------------------------------------------------
class knight extends piece {
  PVector[] allMoves;

  public knight(color pieceColor) {
    super(pieceColor);
  }
}
//---------------------------------------------------------------------------------------
class pawn extends piece {
  PVector[] allMoves;

  public pawn(color pieceColor) {
    super(pieceColor);
  }
}
//---------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------
class board {
  boolean vsAi;
  color p1Color; //color for player (vs ai)
  color p2Color; //color for ai
  boolean p1Standby; //waiting for p1 to select a piece
  boolean p1PieceSelected; //piece is selected by p1, waiting for piece placement or deselection
  boolean p2Standby; //waiting for p2 to select a piece
  boolean p2PieceSelected; //piece is selected by p1, waiting for piece placement or deselection
  boolean aiTurn; //ai's turn

  int[][] boardColors;
  piece[][] pieces;
  final int SQUARE_SIZE = 100;
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
}

void setup() {
  size(800, 800);
  board newGame = new board(color(0,0,0), false);
  newGame.grid();
}
void draw() {
 while(p1Standby == true|| p1Selected == true){
   
 }
}
