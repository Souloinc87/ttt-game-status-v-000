# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    end
   end
false
end

def full?(board)
  board.all? do |full_board|
    if full_board == "X" || full_board == "O"
      true
    end
  end
end

def draw?(board)
  board.all? do |draw_board|
    if !(won?(board)) && full?(board) == true
       return draw_board
    end
  end
end

def over?(board)
  board.all? do |gameover|
    if  full?(board) || draw?(board) || won?(board)
    gameover
    end
  end
end

def winner(board)
  board.each do |winner|
    if won?(board)
      return winner
    end
  end
end
