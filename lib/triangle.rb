class Triangle
  
  def initialize(length1, length2, length3)
    @triangle_sides = []
    @triangle_sides << length1
    @triangle_sides << length2
    @triangle_sides << length3
  end

  def kind
    if @triangle_sides.uniq.length == 1
        return :equilateral
      elsif @triangle_sides.uniq.length == 2
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
      end
    end 
  end

  class TriangleError < StandardError

  end
end
