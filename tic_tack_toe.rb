class Tic_tack_toe
  def initialize
    @board = {"a1" => " ", "a2" => " ", "a3" => " ", "b1" => " ", "b2" => " ", "b3" => " ", "c1" => " ", "c2" => " ", "c3" => " "}
    @winner = ""
    @count = 0
    @move = 0
  end

  def begin_tic_tack_toe
    display_board
    while true
      if @winner != ""
        break
      end
      player1_move
      display_board
      if @winner != "" || @count == 9
        break
      end
      player2_move
      display_board
    end
    return @winner
  end

  def display_board
    puts "  1 2 3"
    puts "a #{@board["a1"]}|#{@board["a2"]}|#{@board["a3"]}"
    puts "  _ _ _"
    puts "b #{@board["b1"]}|#{@board["b2"]}|#{@board["b3"]}"
    puts "  _ _ _"
    puts "c #{@board["c1"]}|#{@board["c2"]}|#{@board["c3"]}"
  end

  def player1_move
    puts "Player 1 (X), choose a position (e.g. a1, b2, c3)"
    while true
      position = gets.chomp
      if @board[position] == " "
        if position == "a1" || position == "a2" || position == "a3" || position == "b1" || position == "b2" || position == "b3" || position == "c1" || position == "c2" || position == "c3" 
          @board[position] = "X"
          break
        else
          puts "Please enter a valid position"
        end
      else
        puts "Please enter a valid position"
      end
    end
    @count += 1
    if @board["a1"] == "X" && @board["a2"] == "X" && @board["a3"] == "X" || @board["b1"] == "X" && @board["b2"] == "X" && @board["b3"] == "X" || @board["c1"] == "X" && @board["c2"] == "X" && @board["c3"] == "X" || @board["a1"] == "X" && @board["b2"] == "X" && @board["c3"] == "X" || @board["c1"] == "X" && @board["b2"] == "X" && @board["a3"] == "X" || @board["a1"] == "X" && @board["b1"] == "X" && @board["c1"] == "X" || @board["a2"] == "X" && @board["b2"] == "X" && @board["c2"] == "X" || @board["a3"] == "X" && @board["b3"] == "X" && @board["c3"] == "X" 
      puts "Player 1 wins!"
      @winner = "Player"
    elsif @count == 9
      puts "Cat's game!"
    end
  end

  def player2_move
    puts "Suzies turn!"
    if @move == 0
      if @board["a3"] == " "
        @board["a3"] = "O"
      else
        @board["c1"] = "O"
      end
    elsif @move == 1
      if @board["c1"] == " "
        @board["c1"] = "O"
      elsif @board["a1"] == " "
        @board["a1"] = "O"
      else
        @board["c3"] = "O"
      end
    elsif @move >= 2
      if @board["a3"] == "O" && @board["c1"] == "O" && @board["b2"] == " "
        @board["b2"] = "O"
      elsif @board["a1"] == "O" && @board["c1"] == "O" && @board["b1"] == " "
        @board["b1"] = "O"
      elsif @board["a3"] == "O" && @board["c3"] == "O" && @board["b3"] == " "
        @board["b3"] == "O"
      else
        possible_moves = []
        @board.each do |position, char|
          if char == " "
            possible_moves << position
          end
        end
        @board[possible_moves.sample] = "O"
      end
    end
    @move += 1
    @count += 1
    if @board["a1"] == "O" && @board["a2"] == "O" && @board["a3"] == "O" || @board["b1"] == "O" && @board["b2"] == "O" && @board["b3"] == "O" || @board["c1"] == "O" && @board["c2"] == "O" && @board["c3"] == "O" || @board["a1"] == "O" && @board["b2"] == "O" && @board["c3"] == "O" || @board["c1"] == "O" && @board["b2"] == "O" && @board["a3"] == "O" || @board["a1"] == "O" && @board["b1"] == "O" && @board["c1"] == "O" || @board["a2"] == "O" && @board["b2"] == "O" && @board["c2"] == "O" || @board["a3"] == "O" && @board["b3"] == "O" && @board["c3"] == "O" 
      puts "Suzie wins!"
      @winner = "Suzie"
    end
  end
end

# game = Tic_tack_toe.new
# game.begin_tic_tack_toe