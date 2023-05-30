class piece{
  public PVector location;
  public color pieceColor;
    public PImage pieceImage;

  public piece(color pieceColor, PVector location) {
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
  public PImage getPieceImage(){
    return pieceImage;
  }
  
}
//---------------------------------------------------------------------------------------
class rook extends piece {
  PVector[] allMoves;

  public rook(color pieceColor, PVector location) {
    super(pieceColor, location);
    if(pieceColor == color(#FFFFFF)){
      pieceImage = loadImage("whiteRook.png");
    } else {
      pieceImage = loadImage("blackRook.png");
    }
  }
  
  
}
//---------------------------------------------------------------------------------------
class ai {
}
//---------------------------------------------------------------------------------------
class bishop extends piece {
  PVector[] allMoves;

  public bishop(color pieceColor, PVector location) {
    super(pieceColor, location);
    if(pieceColor == color(#FFFFFF)){
      pieceImage = loadImage("whiteBishop.png");
    } else {
      pieceImage = loadImage("blackBishop.png");
    }
  }
}
//---------------------------------------------------------------------------------------
class king extends piece {
  PVector[] allMoves;

  public king(color pieceColor, PVector location) {
    super(pieceColor, location);
    if(pieceColor == color(#FFFFFF)){
      pieceImage = loadImage("whiteKing.png");
    } else {
      pieceImage = loadImage("blackKing.png");
    }
  }
}
//---------------------------------------------------------------------------------------
class knight extends piece {
  PVector[] allMoves;

  public knight(color pieceColor, PVector location) {
    super(pieceColor, location);
    if(pieceColor == color(#FFFFFF)){
      pieceImage = loadImage("whiteKnight.png");
    } else {
      pieceImage = loadImage("blackKnight.png");
    }
  }
}
//---------------------------------------------------------------------------------------
class pawn extends piece {
  PVector[] allMoves;

  public pawn(color pieceColor, PVector location) {
    super(pieceColor, location);
    if(pieceColor == color(#FFFFFF)){
      pieceImage = loadImage("whitePawn.png");
    } else {
      pieceImage = loadImage("blackPawn.png");
    }
  }
}
//---------------------------------------------------------------------------------------
class queen extends piece{
  PVector[] allMoves;
  
public queen(color pieceColor, PVector location) {
    super(pieceColor, location);
    if(pieceColor == color(#FFFFFF)){
      pieceImage = loadImage("whiteQueen.png");
    } else {
      pieceImage = loadImage("blackQueen.png");
    }
  }
}
//---------------------------------------------------------------------------------------

//---------------------------------------------------------------------------------------
public class board {
  public boolean vsAi;
  public color p1Color; //color for player (vs ai)
  public color p2Color; //color for ai
  public boolean p1Standby; //waiting for p1 to select a piece
  public boolean p1PieceSelected; //piece is selected by p1, waiting for piece placement or deselection
  public piece p1Piece; //selected piece (p1)
  public boolean p2Standby; //waiting for p2 to select a piece
  public boolean p2PieceSelected; //piece is selected by p1, waiting for piece placement or deselection
  public piece p2Piece; //selected piece (p2)
  public boolean aiTurn; //ai's turn

  public int[][] boardColors;
  public piece[][] pieces;
  public static final int SQUARE_SIZE = 100;
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
    if(playerColor == color(#000000)){
      p1Color = color(#000000);
      p2Color = color(#FFFFFF);
      p1Standby = false;
      p1PieceSelected = false;
      p2Standby = true;
      p2PieceSelected = false;
    } else {
      p1Color = color(#FFFFFF);
      p2Color = color(#000000);
      p1Standby = true;
      p1PieceSelected =false;
      if(versusAi == false){
        p2Standby = false;
        p2PieceSelected = false;
        aiTurn = false;
      } else {
        aiTurn = false;
        p2Standby = false;
        p2PieceSelected = false;
      }   
    }
  }
    public int getSquareSize(){
      return SQUARE_SIZE;
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
    public piece getp1PiecePos(){
      return p1Piece;
    }
    public piece getp2PiecePos(){
      return p2Piece;
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
    public void drawPieces(){
      for(int row = 0;row < 8;row++){
        for(int column = 0; column < 8;column++){
          if(pieces[column][row] == null){
            
          }else{
            image(pieces[column][row].pieceImage,row*SQUARE_SIZE,column*SQUARE_SIZE);
        }
      }
    }

}
}
//-----------------------------------------------------------------------------------------------------------

board newGame;
PImage whiteRook;
void setup() {
  size(800, 800);
  newGame = new board(color(#FFFFFF), false);
  newGame.grid();
  whiteRook = loadImage("whiteRook.png");
  newGame.pieces = new piece[][]{
        {new rook(newGame.p2Color,new PVector(0,0)),new knight(newGame.p2Color,new PVector(1,0)),new bishop(newGame.p2Color,new PVector(2,0)),new queen(newGame.p2Color,new PVector(3,0)),new king(newGame.p2Color,new PVector(4,0)),new bishop(newGame.p2Color,new PVector(5,0)),new knight(newGame.p2Color,new PVector(6,0)),new rook(newGame.p2Color,new PVector(7,0))},
        {new pawn(newGame.p2Color,new PVector(0,1)),new pawn(newGame.p2Color,new PVector(1,1)),new pawn(newGame.p2Color,new PVector(2,1)),new pawn(newGame.p2Color,new PVector(3,1)),new pawn(newGame.p2Color,new PVector(4,1)),new pawn(newGame.p2Color,new PVector(5,1)),new pawn(newGame.p2Color,new PVector(6,1)),new pawn(newGame.p2Color,new PVector(7,1))},
        {null,null,null,null,null,null,null,null},
        {null,null,null,null,null,null,null,null},
        {null,null,null,null,null,null,null,null},
        {null,null,null,null,null,null,null,null},
        {new pawn(newGame.p1Color,new PVector(0,6)),new pawn(newGame.p1Color,new PVector(1,6)),new pawn(newGame.p1Color,new PVector(2,6)),new pawn(newGame.p1Color,new PVector(3,6)),new pawn(newGame.p1Color,new PVector(4,6)),new pawn(newGame.p1Color,new PVector(5,6)),new pawn(newGame.p1Color,new PVector(6,6)),new pawn(newGame.p1Color,new PVector(7,6))},
        {new rook(newGame.p1Color,new PVector(0,7)),new knight(newGame.p1Color,new PVector(1,7)),new bishop(newGame.p1Color,new PVector(2,7)),new queen(newGame.p1Color,new PVector(3,7)),new king(newGame.p1Color,new PVector(4,7)),new bishop(newGame.p1Color,new PVector(5,7)),new knight(newGame.p1Color,new PVector(6,7)),new rook(newGame.p1Color,new PVector(7,7))}  
    };  
}
void draw() {
     newGame.drawPieces();
}

void mouseClicked(){
  PVector mousePos = new PVector(mouseX/newGame.getSquareSize(), mouseY/newGame.getSquareSize());
  newGame.grid(); //resets grid
  if (newGame.getp1PieceSelected()){
    //if selected, mouse pos becomes where piece is moved ( not implemented yet)
    //check if selected location is a ally piece or not ( not implemented yet)
    newGame.p1PieceSelected = false;
    newGame.p1Standby = false;
    newGame.p2Standby = true;
    // ^^^^ above is just testing for switching btwn p1 and p2, breaks on purpose, will delete
  }else{
    // actually select the piece
    if(newGame.getp1Standby()){
      newGame.p1Piece = newGame.pieces[(int)mousePos.y][(int)mousePos.x];
      newGame.p1PieceSelected = true;
      println("p1 " + (int)mousePos.y + ", " + (int)mousePos.x);
    } else{
      newGame.p2Piece = newGame.pieces[(int)mousePos.y][(int)mousePos.x];
      println("p2 " + (int)mousePos.y + ", " + (int)mousePos.x);
      newGame.p2PieceSelected = true;
    }
    //highlight square and possible moves (currently only selects on square bc allMoves is not implemented
    fill(#FFF199);
    square(mousePos.x*newGame.getSquareSize(), mousePos.y*newGame.getSquareSize(),newGame.getSquareSize());
  }
  
}
