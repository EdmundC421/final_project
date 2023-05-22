class Piece{
  PVector location;
  color pieceColor;
  
  public Piece(color pieceColor){
    this.pieceColor = pieceColor;
  }
  
  public void move(int x, int y){
    location.x = x;
    location.y = y;
    
   
  }
  
  
}
