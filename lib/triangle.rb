require 'pry'

class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def equilateral
    (side1 == side2 && side2 == side3) ? true : false
  end

  def isosceles
    if !equilateral
      if side1 == side2 || side2 == side3 || side1 ==side3
         return true
       end
     end
  end

  def scalene
    if !equilateral && !isosceles
      return true
    end
  end

  def invalid_traingle
    if side1 <= 0 || side2 <= 0 || side3 <=0
      return true
    end

    if side1+side2 <=side3 || side1+side3 <=side2 || side2+side3 <=side1
      return true
    end
  end

  def kind
    if invalid_traingle
      raise TriangleError
    end

    return :isosceles if isosceles
    return :equilateral if equilateral
    return :scalene if scalene

  end

  class TriangleError < StandardError
  end
end
