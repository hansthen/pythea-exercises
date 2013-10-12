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

  def key_bindings
    super                 
    @root.bind('u', proc {@board.rotate_clockwise; @board.rotate_clockwise})
    @root.bind('c', proc {@board.cheat})
  end
end

class MyPiece < Piece
  def self.next_piece (board)
    MyPiece.new(All_My_Pieces.sample, board)
  end

  def self.cheat (board)
    MyPiece.new([[[0,0]]], board)
  end 

  All_My_Pieces = All_Pieces <<                
               [[[0, 0], [-2, 0], [-1, 0], [1, 0], [2, 0],],       # longer 
               [[0, 0], [0, -2], [0, -1], [0, 1], [0, 2]]] <<  
               rotations([[0, 0], [0, -1], [1, 0]]) <<             # tri-block
               rotations([[0, 0], [1, 0], [0, 1], [1, 1], [2,1]])  # square + 1
end

class MyBoard < Board
  def initialize (game)
    super
    @current_block = MyPiece.next_piece(self)
    @cheat_next = false
  end

  def cheat
    if @score < 100 or @cheat_next
      return
    else
      @score = @score - 100
      @cheat_next = true
    end
  end

  def next_piece
    if @cheat_next
      @current_block = MyPiece.cheat(self)
      @cheat_next = false
    else
      @current_block = MyPiece.next_piece(self)
    end
    @current_pos = nil
  end

  def store_current
    locations = @current_block.current_rotation
    displacement = @current_block.position
    # This was rewritten to take the differing sizes into 
    # account. (We now also have blocks of size 3 and 5).
    locations.each_with_index do |current, index|
      @grid[current[1]+displacement[1]][current[0]+displacement[0]] =
      @current_pos[index]
    end
    remove_filled
    @delay = [@delay - 2, 80].max
  end
end
