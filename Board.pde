class Board{
  boolean vsAi;
  color p1Color; //color for player (vs ai)
  color p2Color; //color for ai
  boolean p2Color;
  boolean p1Standby; //waiting for p1 to select a piece
  boolean p1PieceSelected; //piece is selected by p1, waiting for piece placement or deselection
  boolean p2Standby; //waiting for p2 to select a piece
  boolean p2PieceSelected; //piece is selected by p1, waiting for piece placement or deselection
  boolean aiTurn; //ai's turn
  
  int[][] boardColors;
  Piece[][] pieces;
  final int SQUARE_SIZE = 100;
    void grid() {
    int rowNum = 0;
    int columnNum = 0;
    stroke(0,0,0);
    for(int[] row: boardColors){
      for(int i: row){
        if(i == 1){
          fill(0,0,0);
        } else{
          fill(500,500,500);
        }
        rect(columnNum*SQUARE_SIZE,rowNum*SQUARE_SIZE,SQUARE_SIZE,SQUARE_SIZE);
        columnNum++;
      }
      columnNum=0;
      rowNum++;
    }
  }
   setup(){
     size(800,800);
       boardColors = new int[][]     { {0, 1, 0, 1, 0, 1, 0, 1}, //generates a green and off white board
                                       {1, 0, 1, 0, 1, 0, 1, 0}, 
                                       {0, 1, 0, 1, 0, 1, 0, 1},
                                       {1, 0, 1, 0, 1, 0, 1, 0},
                                       {0, 1, 0, 1, 0, 1, 0, 1},
                                       {1, 0, 1, 0, 1, 0, 1, 0},
                                       {0, 1, 0, 1, 0, 1, 0, 1},
                                       {1, 0, 1, 0, 1, 0, 1, 0}};
      //if(vsAi){
      //pieces = new Piece[][]         { {new Rook(p2Color, new PVector(pieces.length,), new Knight(p2Color), new Bishop(p2Color), new Queen(p2Color), new King(p2Color), new Bishop(p2Color), new Knight(p2Color), new Rook(p2Color)},
      //                                 {new Pawn(p2Color), new Pawn(p2Color), new Pawn(p2Color), new Pawn(p2Color), new Pawn(p2Color), new Pawn(p2Color), new Pawn(p2Color), new Pawn(p2Color)},
      //                                 {null, null, null, null, null, null, null, null},
      //                                 {null, null, null, null, null, null, null, null},
      //                                 {null, null, null, null, null, null, null, null},
      //                                 {null, null, null, null, null, null, null, null},
      //                                 {new Pawn(p1Color), new Pawn(p1Color), new Pawn(p1Color), new Pawn(p1Color), new Pawn(p1Color), new Pawn(p1Color), new Pawn(p1Color), new Pawn(p1Color)},
      //                                 {new Rook(p1Color), new Knight(p1Color), new Bishop(p1Color), new Queen(p1Color), new King(p1Color), new Bishop()p1Color, new Knight(p1Color), new Rook(p1Color)}         
      //                               };
      //} else {
      //pieces = new Piece[][]         { {new Rook(p2Color), new Knight(p2Color), new Bishop(p2Color), new Queen(p2Color), new King(p2Color), new Bishop(p2Color), new Knight(p2Color), new Rook(p2Color)},
      //                                 {new Pawn(p2Color), new Pawn(p2Color), new Pawn(p2Color), new Pawn(p2Color), new Pawn(p2Color), new Pawn(p2Color), new Pawn(p2Color), new Pawn(p2Color)},
      //                                 {null, null, null, null, null, null, null, null},
      //                                 {null, null, null, null, null, null, null, null},
      //                                 {null, null, null, null, null, null, null, null},
      //                                 {null, null, null, null, null, null, null, null},
      //                                 {new Pawn(p1Color), new Pawn(p1Color), new Pawn(p1Color), new Pawn(p1Color), new Pawn(p1Color), new Pawn(p1Color), new Pawn(p1Color), new Pawn(p1Color)},
      //                                 {new Rook(p1Color), new Knight(p1Color), new Bishop(p1Color), new Queen(p1Color), new King(p1Color), new Bishop()p1Color, new Knight(p1Color), new Rook(p1Color)}         
      //                               };
      //}

}
