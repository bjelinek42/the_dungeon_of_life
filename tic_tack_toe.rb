class Tic_tack_toe
  def initialize
    @board = {a1: " ", a2: " ", a3: " ", b1: " ", b2: " ", b3: " ", c1: " ", c2: " ", c3: " ",}
  end

  def begin
    p winner?
  end

  def display_board
    puts "  a b c"
    puts "1 #{@board[:a1]}|#{@board[:a2]}|#{@board[:a3]}"
    puts "  _ _ _"
    puts "2 #{@board[:b1]}|#{@board[:b2]}|#{@board[:b3]}"
    puts "  _ _ _"
    puts "3 #{@board[:c1]}|#{@board[:c2]}|#{@board[:c3]}"
  end

  def winner?
    if @board[:a1] == "X" && @board[:a2] == "X" && @board[:a3] == "X" || @board[:b1] == "X" && @board[:b2] == "X" && @board[:b3] == "X" || @board[:c1] == "X" && @board[:c2] == "X" && @board[:c3] == "X" || @board[:a1] == "X" && @board[:b2] == "X" && @board[:c3] == "X" || @board[:c1] == "X" && @board[:b2] == "X" && @board[:c3] == "X"
      puts "X wins!"
    elsif @board[:a1] == "O" && @board[:a2] == "O" && @board[:a3] == "O" || @board[:b1] == "O" && @board[:b2] == "O" && @board[:b3] == "O" || @board[:c1] == "O" && @board[:c2] == "O" && @board[:c3] == "O" || @board[:a1] == "O" && @board[:b2] == "O" && @board[:c3] == "O" || @board[:c1] == "O" && @board[:b2] == "O" && @board[:c3] == "O"
      puts "O wins!"
    end
  end
end

game = Tic_tack_toe.new
game.display_board