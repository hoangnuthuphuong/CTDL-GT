
theKnightsTour <- function(startKnight = "a1", M=8,N=8){
  # Chon vi tri xuat phat
  col <- as.numeric(charToRaw(tolower(substr(startKnight,1,1)))) - 96
  row <- as.numeric(substr(startKnight,2,nchar(startKnight)))
  if(row > M | col > N){stop("Khong nằm trong bàn cờ =/")}
  startKnight <- c(row,col)
  
  # Tạo bàn cờ
  chess <- matrix(0, nrow = M, ncol = N)
  # Giá trị hiển thị
  getValue <- function(position){chess[position[1], position[2]]}
  
  setValue <- function(position, x){chess[position[1], position[2]] <<- x}
  
  # các bước quân mã có thể di chuyển
  knightMoves <- cbind(c(-2,-1), c(-1,-2), c(1,-2), c(2,-1),c(2,1), c(1,2), c(-1,2), c(-2,1))
 
  # 1: Bàn cờ phải trống
  # 2: Các nước đi phải ở trong bàn cờ
  # 1 <= move: is x và y phải lớn hơn 1
  # move <= c(M,N): nước đi phải nằm trong bảng
  valid <- function (move) {all(1 <= move & move <= c(M, N)) && (getValue(move) == 0)}


  possibleMoves <- function (position){
    moves <- position + knightMoves
    cbind(moves[, apply(moves, 2, valid)])
  }
  
  candidates <- function (position) {
    moves <- possibleMoves(position)
    wcosts <- apply(moves, 2, function (position) { ncol(possibleMoves(position)) })
    moves <- cbind(moves[, order(wcosts)])
    moves 
  }
  
  
  knightTour = function (position, moveN) {
    # Hoàn thành chuyến đi tuần
    if (moveN > (M * N)) {
      board <- chess
      board <- as.data.frame(board)
      sortBoard <- rev(order(as.numeric(rownames(board))))
      board <- board[sortBoard,]
      colnames(board) <- letters[1:ncol(board)]
      board <<- board; 
      print(board)
      opt <- options(show.error.messages=FALSE) 
      on.exit(options(opt))
      stop() 
    }
    
    moves = candidates(position) 
    if (ncol(moves) == 0) {return()}
    # Tiếp tục di chuyển và hoàn thành chuyến đi tuần
    apply(moves, 2, function (position) {
      setValue(position, moveN)
      knightTour(position, moveN + 1)
      setValue(position, 0)
    })
  }
  setValue(startKnight, 1); knightTour(startKnight, 2)
  print("Không thể thực hiện mã đi tuần.")
}

theKnightsTour("a1", 6,6)

