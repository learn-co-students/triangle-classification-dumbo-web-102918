require 'pry'
class Triangle
  # write code here

  attr_accessor :type, :side1, :side2, :side3

  def initialize(side1, side2, side3)

    @side1 = side1
    @side2 = side2
    @side3 = side3

  end

  def sides
    sides_a = []
    sides_a << @side1 << @side2 << @side3
  end

  def kind
    if self.bad_value?
        raise TriangleError
    elsif @side1 == @side2 && @side3 == @side1
      :equilateral
    elsif self.sides.uniq.count == 2
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError

    def message
      "Invalid triangle parameters"
    end
  end

  def bad_value?
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      return true
    elsif @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side3 + @side1 <= @side2
      return true
    else
      return false
    end
  end

end
