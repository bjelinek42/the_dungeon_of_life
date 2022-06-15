class Tic_tack_toe
  def initialize
    @board = {a1: "_", a2: "_", a3: "_", b1: "_", b2: "_", b3: "_", c1: " ", c2: " ", c3: " ",}
  end

  def begin

  end

  def display_board
    puts "#{@board[:a1]}|#{@board[:a2]}|#{@board[:a3]}"
    puts "#{@board[:b1]}|#{@board[:b2]}|#{@board[:b3]}"
    puts "#{@board[:c1]}|#{@board[:c2]}|#{@board[:c3]}"
  end
end

game = Tic_tack_toe.new
game.display_board