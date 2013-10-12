# University of Washington, Programming Languages, Homework 6, hw6runner.rb

# This is the only file you turn in, so do not modify the other files as
# part of your solution.

class MyTetris < Tetris
  def set_board
    @canvas = TetrisCanvas.new
    @board = MyBoard.new(self)
    @canvas.place(@board.block_size * @board.num_rows + 3,
                  @board.block_size * @board.num_columns + 6, 24, 80)
    @board.draw
  end
    
  # your enhancements here
  def key_bindings
    super
    @root.bind('u', proc {@board.rotate_all_the_way})
    @root.bind('c', proc {@board.cheat})
  end
end

class MyPiece < Piece
  # The constant All_My_Pieces should be declared here
  All_My_Pieces = All_Pieces + [rotations([[0, 0], [0, -1], [1, -1]]),
  rotations([[0, 0], [-1, 0], [0, -1], [1, -1], [-1, -1]]),
  [[[0, 0], [-1, 0], [1, 0], [2, 0], [3, 0]], # long (only needs two)
   [[0, 0], [0, -1], [0, 1], [0, 2], [0, 3]]]] # long
  
  # your enhancements here
  # class method to choose the next piece
  def self.next_piece (board)
      MyPiece.new(All_My_Pieces.sample, board)
  end

end

class MyBoard < Board
  # your enhancements here
  def initialize (game)
    super(game)
    @current_block = MyPiece.next_piece(self)
  end
  
  def rotate_all_the_way
    rotate_clockwise
    rotate_clockwise
  end

  def next_piece
    if @cheat
      @current_block = MyPiece.new([[[0, 0]]], self)
      @cheat = false
    else
      @current_block = MyPiece.next_piece(self)
    end
    @current_pos = nil
  end
  
  def cheat
    if @score < 100 or @cheat.eql? true
      return
    end
    
    @score = @score - 100
    @cheat = true
  end
  
  def store_current
    locations = @current_block.current_rotation
    displacement = @current_block.position

    (0..(@current_pos.size - 1)).each{|index| 
      current = locations[index];
      @grid[current[1]+displacement[1]][current[0]+displacement[0]] = 
      @current_pos[index]
    }
    remove_filled
    @delay = [@delay - 2, 80].max
  end
  
end
