require "pry"
class Triangle
  attr_reader :aside, :bside, :cside


  def initialize(aside, bside, cside)
    @aside = aside
    @bside = bside
    @cside = cside
  end

  def kind
   validate_triangle
   if @aside == @bside && @aside == @cside
     return :equilateral
   elsif @aside == @bside  || @bside == @cside || @aside == @cside
     return :isosceles
   end
   return :scalene
  end

  def validate_triangle
   real_triangle = [(@aside + @bside > @cside), (@aside + @cside > @bside), (@bside + @cside > @aside)]
   [@aside, @bside, @cside].each { |s| real_triangle << false if s <= 0 }
   raise TriangleError if real_triangle.include?(false)
  end


  # def error_check?
  #   triangle_sides = [@aside, @bside, @cside]
  #   result = false
  #   # binding.pry
  #   if @aside + @bside > @cside || @bside + @cside > @aside || @cside + @aside > @bside
  #       result = true
  #   elsif triangle_sides.reduce(:+) == 0 || @aside < 0 || @bside < 0 || @cside < 0
  #       result  = true
  #   end
  #   result
  # end

    class TriangleError < StandardError
    end

end




#
# if triangle_sides.uniq.size == 1
#   return :equilateral
# elsif triangle_sides.uniq.size == 2
#   return :isosceles
# end
#  return :scalene
