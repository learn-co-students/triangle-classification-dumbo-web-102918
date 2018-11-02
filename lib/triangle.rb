class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize (one,two,three)
    @side1 = one
    @side2 = two
    @side3 = three
  end

  def kind
    if @side1 <= 0 || @side2 <= 0 || @side3<= 0
      raise TriangleError
      # rescue TriangleError => error
      #   return error.message
    end

    if @side1 + @side2<= @side3 || @side1 + @side3<= @side2 || @side2 + @side3 <= @side1
      raise TriangleError
    end


    if @side1 == @side2 && @side2 == @side3
      return :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      return :isosceles
    else
      return :scalene
    end
  end


  class TriangleError < StandardError
    def message
      return "WRONG"
    end
  end


end
