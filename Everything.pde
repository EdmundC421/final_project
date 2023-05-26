public class piece {
  public PVector location;
  public color pieceColor;
  public PImage pieceImage;

  public piece(color pieceColor) {
    this.pieceColor = pieceColor;
  }
  public void move(int x, int y) {
    location.x = x;
    location.y = y;
  }
  public void setColor(color c){
    pieceColor = c;
  }
  public color getColor(){
    return pieceColor;
  }
  public void setImage(PImage img){
    pieceImage = img;
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
      p2Standby = false;
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
    public boolean getp1Standby(){
      return p1Standby;
    }
   public boolean getp2Standby(){
      return p2Standby;
    }
   public boolean getp1PieceSelected(){
      return p1PieceSelected;
    }
   public boolean getp2PieceSelected(){
      return p2PieceSelected;
    }
    public boolean getvsAi(){
      return vsAi;
    }
    public color getp1Color(){
      return p1Color;
    }
    public color getp2Color(){
      return p2Color;
    }
    public boolean getaiTurn(){
      return aiTurn;
    }
    public void drawPieces(color p1Color){
      int rowCounter = 0;
      int columnCounter = 0;
      for(Object[] pRow: pieces){
        for(Object p: pRow){
          image(
        }
        columnCounter =0;
        rowCounter++;
      }
    }
  }

board newGame;
void setup() {
  size(800, 800);
   newGame = new board(color(#000000), false);
  newGame.grid();
  newGame.drawPieces();
}
void draw() {
 while(newGame.getp1Standby() == true|| newGame.getp1PieceSelected() == true){
 }
}
