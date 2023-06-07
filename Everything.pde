import java.util.ArrayList;

abstract class piece{
  public String type;
  public PVector location;
  public color pieceColor;
  public PImage pieceImage;
  ArrayList<PVector> allMoves = new ArrayList<PVector>();
  
  public piece(color pieceColor, PVector location) {
    this.pieceColor = pieceColor;
    this.location = location;
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
  public String toString(){
    return pieceColor+ " " + type +" at (" + location.x+ ", "+ location.y+")";
  }
  
  public void calculateMoves(){
    allMoves.clear();
    allMoves.add(new PVector(location.x, location.y));
  }
  
  
}
//---------------------------------------------------------------------------------------
class rook extends piece {
  public rook(color pieceColor, PVector location) {
    super(pieceColor, location);
    if(pieceColor == color(#FFFFFF)){
      pieceImage = loadImage("whiteRook.png");
    } else {
      pieceImage = loadImage("blackRook.png");
    }
    type = "rook";
  }
  
  public void calculateMoves(){
    super.calculateMoves();
    for(int x = (int)location.x+1; x < 8; x++){
      if(newGame.pieces[(int)location.y][x] != null){
        if(newGame.pieces[(int)location.y][x].pieceColor == pieceColor){
          break;
        }
      }
      allMoves.add(new PVector(x, location.y));
      System.out.println(x+" "+ location.y);
      if(newGame.pieces[(int)location.y][x] != null){
        if(newGame.pieces[(int)location.y][x].pieceColor != pieceColor){
          break;
        }
      }
    }
    for(int y = (int)location.y+1; y < 8; y++){
      if(newGame.pieces[y][(int)location.x] != null){
        if(newGame.pieces[y][(int)location.x].pieceColor == pieceColor){
          break;
        }
      }
      allMoves.add(new PVector(location.x, y)); 
      if(newGame.pieces[y][(int)location.x] != null){
        if(newGame.pieces[y][(int)location.x].pieceColor != pieceColor){
          break;
        }
      }
    }
        for(int x = (int)location.x-1; x >= 0; x--){
      if(newGame.pieces[(int)location.y][x] != null){
        if(newGame.pieces[(int)location.y][x].pieceColor == pieceColor){
          break;
        }
      }
      allMoves.add(new PVector(x, location.y));
      if(newGame.pieces[(int)location.y][x] != null){
        if(newGame.pieces[(int)location.y][x].pieceColor != pieceColor){
          break;
        }
      }
    }
    for(int y = (int)location.y-1; y >= 0; y--){
      if(newGame.pieces[y][(int)location.x] != null){
        if(newGame.pieces[y][(int)location.x].pieceColor == pieceColor){
          break;
        }
      }
      allMoves.add(new PVector(location.x, y)); 
      if(newGame.pieces[y][(int)location.x] != null){
        if(newGame.pieces[y][(int)location.x].pieceColor != pieceColor){
          break;
        }
      }
    }
  }
    
}
//---------------------------------------------------------------------------------------
class ai {
}
//---------------------------------------------------------------------------------------
class bishop extends piece {

  public bishop(color pieceColor, PVector location) {
    super(pieceColor, location);
    if(pieceColor == color(#FFFFFF)){
      pieceImage = loadImage("whiteBishop.png");
    } else {
      pieceImage = loadImage("blackBishop.png");
    }
    type = "bishop";
  }
  
  public void calculateMoves(){
    super.calculateMoves();
    int x = (int)location.x+1;
    int y = (int)location.y+1;
    while(x < 8 && x > -1 && y < 8 && y > -1){
      if(newGame.pieces[y][x] != null){
        if(newGame.pieces[y][x].pieceColor == pieceColor){
          break;
        }
      }
      allMoves.add(new PVector(x,y));
      System.out.println(x+" "+ location.y);
      if(newGame.pieces[y][x] != null){
        if(newGame.pieces[y][x].pieceColor != pieceColor){
          break;
        }
      }
      x++;
      y++;
    }
    x = (int)location.x-1;
    y = (int)location.y+1;
    while(x < 8 && x > -1 && y < 8 && y > -1){
      if(newGame.pieces[y][x] != null){
        if(newGame.pieces[y][x].pieceColor == pieceColor){
          break;
        }
      }
      allMoves.add(new PVector(x,y));
      System.out.println(x+" "+ location.y);
      if(newGame.pieces[y][x] != null){
        if(newGame.pieces[y][x].pieceColor != pieceColor){
          break;
        }
      }
      x--;
      y++;
    }
    x = (int)location.x-1;
    y = (int)location.y-1;
    while(x < 8 && x > -1 && y < 8 && y > -1){
      if(newGame.pieces[y][x] != null){
        if(newGame.pieces[y][x].pieceColor == pieceColor){
          break;
        }
      }
      allMoves.add(new PVector(x,y));
      System.out.println(x+" "+ location.y);
      if(newGame.pieces[y][x] != null){
        if(newGame.pieces[y][x].pieceColor != pieceColor){
          break;
        }
      }
      x--;
      y--;
    }
    x = (int)location.x+1;
    y = (int)location.y-1;
    while(x < 8 && x > -1 && y < 8 && y > -1){
      if(newGame.pieces[y][x] != null){
        if(newGame.pieces[y][x].pieceColor == pieceColor){
          break;
        }
      }
      allMoves.add(new PVector(x,y));
      System.out.println(x+" "+ location.y);
      if(newGame.pieces[y][x] != null){
        if(newGame.pieces[y][x].pieceColor != pieceColor){
          break;
        }
      }
      x++;
      y--;
    }
  }
}
//---------------------------------------------------------------------------------------
class king extends piece {

  public king(color pieceColor, PVector location) {
    super(pieceColor, location);
    if(pieceColor == color(#FFFFFF)){
      pieceImage = loadImage("whiteKing.png");
    } else {
      pieceImage = loadImage("blackKing.png");
    }
    type = "king";
  }
  
  public void calculateMoves(){
    super.calculateMoves();
    for(int x = (int)location.x - 1; x < location.x + 2; x++){
      for(int y = (int)location.y - 1; y < location.y + 2; y++){
        if (x < 8 && x > -1 && y < 8 && y > -1){
          if (newGame.pieces[y][x] != null){
            if (newGame.pieces[y][x].pieceColor != pieceColor) {
              allMoves.add(new PVector(x, y));
            }
          }
          else allMoves.add(new PVector(x, y));
        }  
      }
    }
  }
}
//---------------------------------------------------------------------------------------
class knight extends piece {

  public knight(color pieceColor, PVector location) {
    super(pieceColor, location);
    if(pieceColor == color(#FFFFFF)){
      pieceImage = loadImage("whiteKnight.png");
    } else {
      pieceImage = loadImage("blackKnight.png");
    }
    type = "knight";
  }
  
  public void calculateMoves(){
    super.calculateMoves();
    int x = (int)location.x;
    int y = (int)location.y;
    allMoves.add(new PVector(x - 2, y - 1));
    allMoves.add(new PVector(x - 2, y + 1));
    allMoves.add(new PVector(x + 2, y - 1));
    allMoves.add(new PVector(x + 2, y + 1));
    allMoves.add(new PVector(x - 1, y - 2));
    allMoves.add(new PVector(x + 1, y - 2));
    allMoves.add(new PVector(x - 1, y + 2));
    allMoves.add(new PVector(x + 1, y + 2));
    for (int pos = allMoves.size() - 1; pos >= 0; pos--){
      if (allMoves.get(pos).x > 7 || allMoves.get(pos).x < 0 || allMoves.get(pos).y > 7 || allMoves.get(pos).y < 0){
        allMoves.remove(pos);
      }
    }
    for (int pos = allMoves.size() - 1; pos >= 0; pos--){
      if(newGame.pieces[(int)allMoves.get(pos).y][(int)allMoves.get(pos).x] != null){
          if(newGame.pieces[(int)allMoves.get(pos).y][(int)allMoves.get(pos).x].pieceColor == pieceColor){
            allMoves.remove(pos);
          }
        }
    }
  }
}
//---------------------------------------------------------------------------------------
class pawn extends piece {
  public boolean takenFirstStep = false;
  
  public pawn(color pieceColor, PVector location) {
    super(pieceColor, location);
    if(pieceColor == color(#FFFFFF)){
      pieceImage = loadImage("whitePawn.png");
    } else {
      pieceImage = loadImage("blackPawn.png");
    }
    type = "pawn";
  }
  
  public void calculateMoves(){
    super.calculateMoves();
    int dir;
    if (pieceColor == #FFFFFF) dir = -1; //forward
    else dir = 1; //backwards
    int x = (int)location.x;
    int y = (int)location.y + dir;
    
    if(pieceColor == newGame.p1Color){
      if(location.y == 6){
        takenFirstStep = false;
      }
    }
    if(pieceColor == newGame.p2Color){
      if(location.y == 1){
        takenFirstStep = false;
      }
    }
    if (x < 8 && x > -1 && y < 8 && y > -1){
      if (newGame.pieces[y][x] == null){
        allMoves.add(new PVector(x, y));
        if (y+dir < 8 && y + dir >=0){
          if (takenFirstStep == false){
            allMoves.add(new PVector(x, y+dir));
            takenFirstStep = true;
          }
        }
      }
      if (x > 0){
        if (newGame.pieces[y][x - 1] != null){
          if (newGame.pieces[y][x - 1].pieceColor != pieceColor) allMoves.add(new PVector(x - 1, y));
        }
      }
      if (x < 7){
        if (newGame.pieces[y][x + 1] != null){
          if (newGame.pieces[y][x + 1].pieceColor != pieceColor) allMoves.add(new PVector(x + 1, y));
        }
      }
      
    }
 
    
    
    
    //  allMoves.add(new PVector(x, y - 1));
    //  if (y == 6) {
    //    allMoves.add(new PVector(x, y - 2));
    //  }
    //  if (x - 1 >= 0){
    //    if (newGame.pieces[x - 1][y - 1] != null){
    //      if (newGame.pieces[x - 1][y - 1].pieceColor == #000000){
    //        allMoves.add(new PVector(x - 1, y - 1));
    //      }
    //    }
    //  }
    //  if (x+1 < 8){
    //    if (newGame.pieces[x + 1][y - 1] != null){
    //      if (newGame.pieces[x + 1][y - 1].pieceColor == #000000){
    //        allMoves.add(new PVector(x + 1, y - 1));
    //      }
    //    }
    //  }
    //}else if (pieceColor == #000000){
    //  allMoves.add(new PVector(location.x, location.y));
    //  allMoves.add(new PVector(location.x, location.y + 1));
    //  if (location.y == 1) {
    //    allMoves.add(new PVector(location.x, location.y + 2));
    //  }
    //  if (newGame.pieces[x - 1][y + 1] != null){
    //    if (newGame.pieces[x - 1][y + 1].pieceColor == #FFFFFF){
    //      allMoves.add(new PVector(x - 1, y + 1));
    //    }
    //  }
    //  if (newGame.pieces[x + 1][y + 1] != null){
    //    if (newGame.pieces[x + 1][y + 1].pieceColor == #FFFFFF){
    //      allMoves.add(new PVector(x + 1, y + 1));
    //    }
    //  }
    //}
  }
}
//---------------------------------------------------------------------------------------
class queen extends piece{
  
public queen(color pieceColor, PVector location) {
    super(pieceColor, location);
    if(pieceColor == color(#FFFFFF)){
      pieceImage = loadImage("whiteQueen.png");
    } else {
      pieceImage = loadImage("blackQueen.png");
    }
    type = "queen";
  }
  
  public void calculateMoves(){
    super.calculateMoves();
    //calculate horisontal and vertical
    for(int x = (int)location.x+1; x < 8; x++){
      if(newGame.pieces[(int)location.y][x] != null){
        if(newGame.pieces[(int)location.y][x].pieceColor == pieceColor){
          break;
        }
      }
      allMoves.add(new PVector(x, location.y));
      System.out.println(x+" "+ location.y);
      if(newGame.pieces[(int)location.y][x] != null){
        if(newGame.pieces[(int)location.y][x].pieceColor != pieceColor){
          break;
        }
      }
    }
    for(int y = (int)location.y+1; y < 8; y++){
      if(newGame.pieces[y][(int)location.x] != null){
        if(newGame.pieces[y][(int)location.x].pieceColor == pieceColor){
          break;
        }
      }
      allMoves.add(new PVector(location.x, y)); 
      if(newGame.pieces[y][(int)location.x] != null){
        if(newGame.pieces[y][(int)location.x].pieceColor != pieceColor){
          break;
        }
      }
    }
        for(int x = (int)location.x-1; x >= 0; x--){
      if(newGame.pieces[(int)location.y][x] != null){
        if(newGame.pieces[(int)location.y][x].pieceColor == pieceColor){
          break;
        }
      }
      allMoves.add(new PVector(x, location.y));
      if(newGame.pieces[(int)location.y][x] != null){
        if(newGame.pieces[(int)location.y][x].pieceColor != pieceColor){
          break;
        }
      }
    }
    for(int y = (int)location.y-1; y >= 0; y--){
      if(newGame.pieces[y][(int)location.x] != null){
        if(newGame.pieces[y][(int)location.x].pieceColor == pieceColor){
          break;
        }
      }
      allMoves.add(new PVector(location.x, y)); 
      if(newGame.pieces[y][(int)location.x] != null){
        if(newGame.pieces[y][(int)location.x].pieceColor != pieceColor){
          break;
        }
      }
    }
    
    //calculate diagonals
    int x = (int)location.x+1;
    int y = (int)location.y+1;
    while(x < 8 && x > -1 && y < 8 && y > -1){
      if(newGame.pieces[y][x] != null){
        if(newGame.pieces[y][x].pieceColor == pieceColor){
          break;
        }
      }
      allMoves.add(new PVector(x,y));
      System.out.println(x+" "+ location.y);
      if(newGame.pieces[y][x] != null){
        if(newGame.pieces[y][x].pieceColor != pieceColor){
          break;
        }
      }
      x++;
      y++;
    }
    x = (int)location.x-1;
    y = (int)location.y+1;
    while(x < 8 && x > -1 && y < 8 && y > -1){
      if(newGame.pieces[y][x] != null){
        if(newGame.pieces[y][x].pieceColor == pieceColor){
          break;
        }
      }
      allMoves.add(new PVector(x,y));
      System.out.println(x+" "+ location.y);
      if(newGame.pieces[y][x] != null){
        if(newGame.pieces[y][x].pieceColor != pieceColor){
          break;
        }
      }
      x--;
      y++;
    }
    x = (int)location.x-1;
    y = (int)location.y-1;
    while(x < 8 && x > -1 && y < 8 && y > -1){
      if(newGame.pieces[y][x] != null){
        if(newGame.pieces[y][x].pieceColor == pieceColor){
          break;
        }
      }
      allMoves.add(new PVector(x,y));
      System.out.println(x+" "+ location.y);
      if(newGame.pieces[y][x] != null){
        if(newGame.pieces[y][x].pieceColor != pieceColor){
          break;
        }
      }
      x--;
      y--;
    }
    x = (int)location.x+1;
    y = (int)location.y-1;
    while(x < 8 && x > -1 && y < 8 && y > -1){
      if(newGame.pieces[y][x] != null){
        if(newGame.pieces[y][x].pieceColor == pieceColor){
          break;
        }
      }
      allMoves.add(new PVector(x,y));
      System.out.println(x+" "+ location.y);
      if(newGame.pieces[y][x] != null){
        if(newGame.pieces[y][x].pieceColor != pieceColor){
          break;
        }
      }
      x++;
      y--;
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
  public ArrayList<piece> white = new ArrayList<piece>();
  public ArrayList<piece> black = new ArrayList<piece>();
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
void switchTurn(){
  if(p1Standby){
    p1Standby = false;
    p1PieceSelected = false;
    p1Piece = null;
    p2Standby = true;
    p2PieceSelected = false;
    p2Piece = null;
  } else {
    p1Standby = true;
    p1PieceSelected = false;
    p1Piece = null;
    p2Standby = false;
    p2PieceSelected = false;
    p2Piece = null;
  }
}

void printBoard(){
  for(piece[] pArray:pieces){
    for(piece p: pArray){
      System.out.print(p + "   ");
    }
    System.out.println();
  }
}

void detectCheck(color c){
    for(piece p: newGame.white){
      for(PVector vector: p.allMoves){
        
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
    for(piece[] row: newGame.pieces){
      for(piece p: row){
        if(p != null){
          if(p.pieceColor == #FFFFFF){
            newGame.white.add(p);
          }
          if(p.pieceColor == #000000){
            newGame.black.add(p);
          }
        }
      }
    }
}
void draw() {
     newGame.drawPieces();
}

//(newGame.pieces[(int)mousePos.y][(int)mousePos.x] == null) || (newGame.pieces[(int)mousePos.y][(int)mousePos.x].pieceColor != newGame.p1Color)
void mouseClicked(){
  PVector mousePos = new PVector(mouseX/newGame.getSquareSize(), mouseY/newGame.getSquareSize());
  newGame.grid(); //resets grid
  if (newGame.getp1PieceSelected() || newGame.getp2PieceSelected()){
    //print("piece selected option");
    if(newGame.p1Standby){
    //if selected, mouse pos becomes where piece is moved
        if(newGame.pieces[(int)mousePos.y][(int)mousePos.x] != null){
          if (newGame.pieces[(int)mousePos.y][(int)mousePos.x].pieceColor != newGame.p1Piece.pieceColor){
            if(newGame.p1Piece != null){
              for(PVector pos: newGame.p1Piece.allMoves){
                if(pos.x == (int)mousePos.x && pos.y == (int)mousePos.y){
                  if(newGame.pieces[(int)mousePos.y][(int)mousePos.x] != null){
                    if(newGame.pieces[(int)mousePos.y][(int)mousePos.x].pieceColor != newGame.p1Piece.pieceColor){
                    newGame.black.remove(newGame.pieces[(int)mousePos.y][(int)mousePos.x]);
                  }
                }
                  newGame.pieces[(int)mousePos.y][(int)mousePos.x] = newGame.p1Piece;
                newGame.pieces[(int)newGame.p1Piece.location.y][(int)newGame.p1Piece.location.x] = null;
                  //println("prevlocation1: " + (int)newGame.p1Piece.location.y + " " + (int)newGame.p1Piece.location.x);
                  newGame.p1Piece.location = new PVector ((int)mousePos.x, (int)mousePos.y);
                  newGame.switchTurn();
                }
              }
            }
            
          }else{
            newGame.p1PieceSelected = false;
            newGame.p1Piece = null;
        }
        }else{
            if(newGame.p1Piece != null){
              for(PVector pos: newGame.p1Piece.allMoves){
                if(pos.x == (int)mousePos.x && pos.y == (int)mousePos.y){
                  if(newGame.pieces[(int)mousePos.y][(int)mousePos.x] != null){
                    if(newGame.pieces[(int)mousePos.y][(int)mousePos.x].pieceColor != newGame.p1Piece.pieceColor){
                    newGame.black.remove(newGame.pieces[(int)mousePos.y][(int)mousePos.x]);
                  }
                }
                newGame.pieces[(int)mousePos.y][(int)mousePos.x] = newGame.p1Piece;
                newGame.pieces[(int)newGame.p1Piece.location.y][(int)newGame.p1Piece.location.x] = null;
                //println("prevlocation1: " + (int)newGame.p1Piece.location.y + " " + (int)newGame.p1Piece.location.x);
                newGame.p1Piece.location = new PVector ((int)mousePos.x, (int)mousePos.y);
                newGame.switchTurn();
              }
            }
          }
        }
      
    } else if (newGame.p2Standby){//edit please
        if(newGame.pieces[(int)mousePos.y][(int)mousePos.x] != null){
        if (newGame.pieces[(int)mousePos.y][(int)mousePos.x].pieceColor != newGame.p2Piece.pieceColor){
           if(newGame.p2Piece != null){
            for(PVector pos: newGame.p2Piece.allMoves){
              if(pos.x == (int)mousePos.x && pos.y == (int)mousePos.y){
                if(newGame.pieces[(int)mousePos.y][(int)mousePos.x] != null){
                  if(newGame.pieces[(int)mousePos.y][(int)mousePos.x].pieceColor != newGame.p2Piece.pieceColor){
                    newGame.white.remove(newGame.pieces[(int)mousePos.y][(int)mousePos.x]);
                  }
                }
                newGame.pieces[(int)mousePos.y][(int)mousePos.x] = newGame.p2Piece;
                newGame.pieces[(int)newGame.p2Piece.location.y][(int)newGame.p2Piece.location.x] = null;
                //println("prevlocation2: " + (int)newGame.p2Piece.location.y + " " + (int)newGame.p2Piece.location.x);
                newGame.p2Piece.location = new PVector ((int)mousePos.x, (int)mousePos.y);              
                newGame.switchTurn();
                    }
                  }
                }
        }else{
          newGame.p2PieceSelected = false;
          newGame.p2Piece = null;
        }
        }else{
          if(newGame.p2Piece != null){
              for(PVector pos: newGame.p2Piece.allMoves){
                if(pos.x == (int)mousePos.x && pos.y == (int)mousePos.y){
                  if(newGame.pieces[(int)mousePos.y][(int)mousePos.x] != null){
                    if(newGame.pieces[(int)mousePos.y][(int)mousePos.x].pieceColor != newGame.p2Piece.pieceColor){
                    newGame.white.remove(newGame.pieces[(int)mousePos.y][(int)mousePos.x]);
                  }
                }
                  newGame.pieces[(int)mousePos.y][(int)mousePos.x] = newGame.p2Piece;
                  newGame.pieces[(int)newGame.p2Piece.location.y][(int)newGame.p2Piece.location.x] = null;
                  //println("prevlocation2: " + (int)newGame.p2Piece.location.y + " " + (int)newGame.p2Piece.location.x);
                  newGame.p2Piece.location = new PVector ((int)mousePos.x, (int)mousePos.y);
                  newGame.switchTurn();
                }
              }
          }
        }
    }
  }
  else{
    // actually select the piece
    if(newGame.p1Standby){
      newGame.p1Piece = newGame.pieces[(int)mousePos.y][(int)mousePos.x];
      if(newGame.p1Piece != null){
        if (newGame.p1Piece.pieceColor == newGame.p1Color){
          newGame.p1PieceSelected = true;
          println("p1 " + (int)mousePos.y + ", " + (int)mousePos.x);
          //println(newGame.p1Piece.getClass());
          newGame.p1Piece.calculateMoves();
          fill(#FFF199);
          for(PVector pos: newGame.p1Piece.allMoves){
            println(pos.x + " " + pos.y);
            println(".");
            square(pos.x*newGame.getSquareSize(), pos.y*newGame.getSquareSize(),newGame.getSquareSize());
          }
        }
      }
    } else{
      newGame.p2Piece = newGame.pieces[(int)mousePos.y][(int)mousePos.x];
      if(newGame.p2Piece != null){
        if (newGame.p2Piece.pieceColor == newGame.p2Color){
          println("p2 " + (int)mousePos.y + ", " + (int)mousePos.x);
          newGame.p2PieceSelected = true;
          fill(#FFF199);
          newGame.p2Piece.calculateMoves();
          for(PVector pos: newGame.p2Piece.allMoves){
            square(pos.x*newGame.getSquareSize(), pos.y*newGame.getSquareSize(),newGame.getSquareSize());
          }
        }
      }
    }
    //highlight square and possible moves (currently only selects on square bc allMoves is not implemented
    //fill(#FFF199);
    //for(PVector pos: newGame.p1Piece.allMoves){
    //square(mousePos.x*newGame.getSquareSize(), mousePos.y*newGame.getSquareSize(),newGame.getSquareSize());
    //}
  }
  

  
  
  newGame.printBoard();
  System.out.println(newGame.p1Piece);
  System.out.println(newGame.p2Piece);
  for(piece p: newGame.white){
    System.out.print(p+ "     ");
  }
  System.out.println();
  System.out.println();
  for(piece p: newGame.black){
    System.out.print(p+ "     ");
  }
}
