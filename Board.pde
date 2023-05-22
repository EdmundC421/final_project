class Board{
  boolean p1Color;
  boolean p2Color;
  boolean aiColor;
  boolean p1Standby;
  boolean p1PieceSelected;
  boolean p1PieceMoved;
  boolean p2Standby;
  boolean p2PieceSelected;
  boolean p2PieceMoved;
  boolean aiTurnStart;
  boolean aiTurnEnd;
  
  int[]boardColors;
  Piece[][]pieces;
   setup(){
       boardColors = new int[][]     { {0, 1, 0, 1, 0, 1, 0, 1},
                                       {1, 0, 1, 0, 1, 0, 1, 0},
                                       {0, 1, 0, 1, 0, 1, 0, 1},
                                       {1, 0, 1, 0, 1, 0, 1, 0},
                                       {0, 1, 0, 1, 0, 1, 0, 1},
                                       {1, 0, 1, 0, 1, 0, 1, 0},
                                       {0, 1, 0, 1, 0, 1, 0, 1},
                                       {1, 0, 1, 0, 1, 0, 1, 0}};
      pieces = new Piece[][]         { {new Rook(), new Knight(), new Bishop(), new Queen(), new King(), new Bishop(), new Knight(), new Rook()},
                                       {new Pawn(), new Pawn(), new Pawn(), new Pawn(), new Pawn(), new Pawn(), new Pawn(), new Pawn()},
                                       {null, null, null, null, null, null, null, null},
                                       {null, null, null, null, null, null, null, null},
                                       {null, null, null, null, null, null, null, null},
                                       {null, null, null, null, null, null, null, null},
                                       {new Pawn(), new Pawn(), new Pawn(), new Pawn(), new Pawn(), new Pawn(), new Pawn(), new Pawn()},
                                       {new Rook(), new Knight(), new Bishop(), new Queen(), new King(), new Bishop(), new Knight(), new Rook()}         
   }
}
