# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|

    position_1 = board[win_combination[0]]
    position_2 = board[win_combination[1]]
    position_3 = board[win_combination[2]]


    position_1 == position_2 && position_2 == position_3 && position_taken?(board,win_combination[0])
  end
end

def full?(board)
  board.all? do |position|
    position == "X" || "O"
  end
end

def draw?(board)
  if   won?(board) == false && full?(board)
    true
  elsif full?(board) && won?(board) || full?(board) == false ||won?(board)
    false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  else
    false
  end
end

def winner(board)
  if   position_1 == position_2 && position_2 == position_3 && position_taken?(board,win_combination[0]) == "X"
    "X"
  elsif
      position_1 == position_2 && position_2 == position_3 && position_taken?(board,win_combination[0]) == "O"
      "O"
    else
      nil
  end
end
