class Triangle
  # write code here
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind 
    validate_triangle(@side1, @side2, @side3)
    if @side1 == @side2 && @side2 == @side3
      return :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      return :isosceles
    else 
      return :scalene
    end
  end

  def validate_triangle(side1, side2, side3)
    if side1 > 0 && side2 > 0 && side3 > 0
      if side1 + side2 > side3 && side2 + side3 > side1 && side1 + side3 > side2
        return "valid triangle"
      else
        raise TriangleError
      end
    else 
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end
