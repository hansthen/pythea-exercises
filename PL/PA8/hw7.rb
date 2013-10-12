# University of Washington, Programming Languages, Homework 7, hw7.rb
# (See also ML code.)

# a little language for 2D geometry objects

# each subclass of GeometryExpression, including subclasses of GeometryValue,
#  needs to respond to messages preprocess_prog and eval_prog
#
# each subclass of GeometryValue additionally needs:
#   * shift
#   * intersect, which uses the double-dispatch pattern
#   * intersectPoint, intersectLine, and intersectVerticalLine for 
#       for being called by intersect of appropriate clases and doing
#       the correct intersection calculuation
#   * (We would need intersectNoPoints and intersectLineSegment, but these
#      are provided by GeometryValue and should not be overridden.)
#   *  intersectWithSegmentAsLineResult, which is used by 
#      intersectLineSegment as described in the assignment
#
# you can define other helper methods, but will not find much need to

# Note: geometry objects should be immutable: assign to fields only during
#       object construction

# Note: For eval_prog, represent environments as arrays of 2-element arrays
# as described in the assignment

class GeometryExpression  
  # do *not* change this class definition
  Epsilon = 0.00001
  
  public
  def preprocess_prog
    self
  end
end

class GeometryValue 
  # do *not* change methods in this class definition
  # you can add methods if you wish

  private
  # some helper methods that may be generally useful
  def real_close(r1,r2) 
      (r1 - r2).abs < GeometryExpression::Epsilon
  end
  def real_close_point(x1,y1,x2,y2) 
      real_close(x1,x2) && real_close(y1,y2)
  end
  # two_points_to_line could return a Line or a VerticalLine
  def two_points_to_line(x1,y1,x2,y2) 
      if real_close(x1,x2)
        VerticalLine.new x1
      else
        m = (y2 - y1).to_f / (x2 - x1)
        b = y1 - m * x1
        Line.new(m,b)
      end
  end

  public
  # we put this in this class so all subclasses can inherit it:
  # the intersection of self with a NoPoints is a NoPoints object
  def intersectNoPoints np
    np # could also have NoPoints.new here instead
  end

  # we put this in this class so all subclasses can inhert it:
  # the intersection of self with a LineSegment is computed by
  # first intersecting with the line containing the segment and then
  # calling the result's intersectWithSegmentAsLineResult with the segment
  def intersectLineSegment seg
    line_result = intersect(two_points_to_line(seg.x1,seg.y1,seg.x2,seg.y2))
    line_result.intersectWithSegmentAsLineResult seg
  end

  def eval_prog env 
    self # all values evaluate to self
  end

  def preprocess_prog
    self # For convenience, as this is only overridden in LineSegment
  end
end

class NoPoints < GeometryValue
  # do *not* change this class definition: everything is done for you
  # (although this is the easiest class, it shows what methods every subclass
  # of geometry values needs)


  def eval_prog env 
    self # all values evaluate to self
  end

  def preprocess_prog
    self # For convenience, as this is only overridden in LineSegment
  end

  # Note: no initialize method only because there is nothing it needs to do
  def shift(dx,dy)
    self # shifting no-points is no-points
  end
  def intersect other
    other.intersectNoPoints self # will be NoPoints but follow double-dispatch
  end
  def intersectPoint p
    self # intersection with point and no-points is no-points
  end
  def intersectLine line
    self # intersection with line and no-points is no-points
  end
  def intersectVerticalLine vline
    self # intersection with line and no-points is no-points
  end
  # if self is the intersection of (1) some shape s and (2) 
  # the line containing seg, then we return the intersection of the 
  # shape s and the seg.  seg is an instance of LineSegment
  def intersectWithSegmentAsLineResult seg
    self
  end
end


class Point < GeometryValue
  # *add* methods to this class -- do *not* change given code and do not
  # override any methods

  # Note: You may want a private helper method like the local
  # helper function inbetween in the ML code
  attr_reader :x, :y
  def initialize(x,y)
    @x = x
    @y = y
  end
  def shift(dx,dy)
    return Point.new(x+dx,y+dy)
  end
  def intersect other
    other.intersectPoint self 
  end
  def intersectPoint p
    if real_close_point(self.x, self.y, p.x, p.y)
      return self
    else
      return NoPoints.new
    end
  end
  def intersectLine line
    if real_close(line.b + line.m * @x, @y)
      return self
    else
      return NoPoints.new
    end
  end
  def intersectVerticalLine vline
    if real_close(vline.x, @x)
      return self
    else
      return NoPoints.new
    end
  end
  def intersectWithSegmentAsLineResult seg
    if seg.x1 <= @x and @x <= seg.x2
       return self
    else
       return NoPoints.new
    end
  end
end

class Line < GeometryValue
  # *add* methods to this class -- do *not* change given code and do not
  # override any methods
  attr_reader :m, :b 
  def initialize(m,b)
    @m = m
    @b = b
  end
  def shift(dx,dy)
    return Line.new(@m, @b+dy-@m*dx)
  end
  def intersect other
    other.intersectLine self 
  end
  def intersectPoint p
    if real_close(p.y, @m * p.x + @b)
      return p
    else
      return NoPoints.new
    end
  end
  def intersectLine line
    if real_close(line.m, @m) and real_close(line.b, @b)
      return self
    elsif real_close(line.m, @m)
      return NoPoints.new
    else
      x = (line.b - @b) / (@m - line.m) 
      y = @m * x + @b
      return Point.new(x,y)
    end
  end
  def intersectVerticalLine vline
    return @m * vline.x + @b
  end
  def intersectWithSegmentAsLineResult seg
    return seg # always return the line segment 
               # if as line result is a line
  end
end

class VerticalLine < GeometryValue
  # *add* methods to this class -- do *not* change given code and do not
  # override any methods
  attr_reader :x
  def initialize x
    @x = x
  end
  def shift(dx,dy)
    return VerticalLine.new(@x + dx)
  end
  def intersect other
    other.intersectVerticalLine self # will be NoPoints but follow double-dispatch
  end
  def intersectPoint p
    if real_close(@x, p.x)
      return p
    else
      return NoPoints.new
    end
  end
  def intersectLine line
    y = line.m * @x + line.b
    return Point.new(@x,y)
  end
  def intersectVerticalLine vline
    if real_close(@x, vline.x)
      return self
    else
      return NoPoints.new
    end
  end
  # if self is the intersection of (1) some shape s and (2) 
  # the line containing seg, then we return the intersection of the 
  # shape s and the seg.  seg is an instance of LineSegment
  def intersectWithSegmentAsLineResult seg
    return seg # see comments at line
  end
end

class LineSegment < GeometryValue
  # *add* methods to this class -- do *not* change given code and do not
  # override any methods
  # Note: This is the most difficult class.  In the sample solution,
  #  preprocess_prog is about 15 lines long and 
  # intersectWithSegmentAsLineResult is about 40 lines long
  attr_reader :x1, :y1, :x2, :y2
  def initialize (x1,y1,x2,y2)
    @x1 = x1
    @y1 = y1
    @x2 = x2
    @y2 = y2
  end
  def sort(x1,y1,x2,y2)
    if real_close(x1,x2) and y1 - y2 > GeometryExpression::Epsilon
      return [x2,y2,x1,y1]
    else
      if x1 - x2 > GeometryExpression::Epsilon
        return [x2,y2,x1,y1]
      else 
        return [x1,y1,x2,y2]
      end
    end
  end
  def preprocess_prog
    if real_close_point(@x1, @y1, @x2, @y2)
      return Point.new(@x1, @y1)
    else
      x1, y1, x2, y2 = sort(@x1,@y1,@x2,@y2)
      return LineSegment.new(x1,y1,x2,y2)
    end
  end
  def shift(dx,dy)
    return LineSegment.new(@x1+dx, @y1+dy, @x2+dx, @y2+dy)
  end
  def intersect other
    other.intersectLineSegment self 
  end
  def intersectPoint p
    p.intersectLineSegment self
  end
  def intersectLine line
    line.intersectLineSegment self
  end
  def intersectVerticalLine vline
    vline.intersectLineSegment self
  end
  def intersectWithSegmentAsLineResult seg
    intersectLineSegment seg
  end
  def intersectLineSegment seg
    if real_close(@x1,@x2) and real_close(seg.x1,seg.x2)
      # two vertical line segments
      if @y1 > seg.y2 or @y2 < seg.y1
        # no overlap
        return NoPoints.new
      else
        # normalize for degenerate cases
        return LineSegment.new(@x1, [seg.y1, @y1].max, 
                               @x1, [seg.y2, @y2].min).preprocess_prog
      end
    elsif real_close(@x1,@x2) or real_close(seg.x1,seg.x2)
      # determine if they intersect
      line1 = two_points_to_line(seg.x1,seg.y1,seg.x2,seg.y2)
      line2 = two_points_to_line(@x1,@y1,@x2,@y2)
      result = line1.intersect(line2)
      result = result.intersectWithSegmentAsLineResult seg
      result = result.intersectWithSegmentAsLineResult self
    else
      # determine slopes
      slope1 = (@y2 - @y1) / (@x2 - @x1)
      slope2 = (seg.y2 - seg.y1) / (seg.x2 - seg.x1)
      if slope1 == slope2
        # if intersects there is possible overlap
        # return a (normalized) line segment
        if @y1 > seg.y2 or @y2 < seg.y1
          return NoPoints.new
        else
          s = LineSegment.new([@x1, seg.x1].max, [seg.y1, @y1].max, 
                              [@x2, seg.x2].min, [seg.y2, @y2].min).preprocess_prog
          return s
        end
      else
        # determine if they intersect
        line1 = two_points_to_line(seg.x1,seg.y1,seg.x2,seg.y2)
        line2 = two_points_to_line(@x1,@y1,@x2,@y2)
        result = line1.intersect(line2)
        # returns a point
        result = result.intersectWithSegmentAsLineResult seg
        result = result.intersectWithSegmentAsLineResult self
        return result
      end
    end
  end
end

# Note: there is no need for getter methods for the non-value classes

class Intersect < GeometryExpression
  # *add* methods to this class -- do *not* change given code and do not
  # override any methods
  def initialize(e1,e2)
    @e1 = e1
    @e2 = e2
  end
  def eval_prog env
    @e1.eval_prog(env).intersect(@e2.eval_prog(env))
  end
  def preprocess_prog
    return Intersect.new(@e1.preprocess_prog, @e2.preprocess_prog)
  end
end

class Let < GeometryExpression
  # *add* methods to this class -- do *not* change given code and do not
  # override any methods
  attr_reader :s, :e1, :e2
  def initialize(s,e1,e2)
    @s = s
    @e1 = e1
    @e2 = e2
  end
  def eval_prog env
    env2 = env.clone
    item = env2.assoc(@s)
    if item != nil
      item[1] = @e1.eval_prog(env)
    else
      env2.push([@s,@e1.eval_prog(env)])
    end
    @e2.eval_prog env2
  end
  def preprocess_prog
    return Let.new(s, @e1.preprocess_prog, @e2.preprocess_prog)
  end
end

class Var < GeometryExpression
  # *add* methods to this class -- do *not* change given code and do not
  # override any methods
  def initialize s
    @s = s
  end
  def eval_prog env
    env.assoc(@s)[1]
  end
end

class Shift < GeometryExpression
  # *add* methods to this class -- do *not* change given code and do not
  # override any methods
  def initialize(dx,dy,e)
    @dx = dx
    @dy = dy
    @e = e
  end
  def eval_prog env
    v = @e.eval_prog env
    return v.shift(@dx,@dy)
  end
  def preprocess_prog
    return Shift.new(@dx, @dy, @e.preprocess_prog)
  end
end
