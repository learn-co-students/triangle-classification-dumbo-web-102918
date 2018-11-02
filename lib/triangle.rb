require "pry"

class Triangle
  # write code here
attr_accessor :type
attr_reader :sideone, :sidetwo, :sidethree


class TriangleError < StandardError
end

def initialize (sideone, sidetwo, sidethree)
  @sideone = sideone
  @sidetwo = sidetwo
  @sidethree = sidethree
end

def kind
  if @sideone == 0 || @sideone < 0 || @sidetwo < 0 || @sidethree < 0
    raise TriangleError
  end

  if @sideone + @sidetwo <= @sidethree || @sidetwo + @sidethree <= @sideone || @sideone + @sidethree <= @sidetwo 
    raise TriangleError
  end

   if @sideone == @sidetwo && @sideone == @sidethree &&
  @sidethree == @sidetwo
  self.type = :equilateral
 elsif @sideone == @sidetwo ||  @sideone == @sidethree || @sidetwo == @sidethree
    self.type = :isosceles
  elsif @sideone != @sidetwo && @sideone!= @sidethree && @sidetwo != @sidethree
      self.type = :scalene
  end

 return self.type
end

end
