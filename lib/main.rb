

def create_board()
    board = Array.new

    for i in 1..8 do
        # require 'pry-byebug'; binding.pry
        row = Array.new
        for j in 1..8 do
            row[j - 1] = i * j
        end
        board.append(row)
    end

    return board
end

def knight_moves(current_square, desired_square)
    board = create_board
    moves = Array.new
    board[3][3]
end


p knight_moves([0,0], [1, 1])