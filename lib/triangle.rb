class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
  	@side1 = side1
  	@side2 = side2
  	@side3 = side3
  end

  def kind
  	!invalid?
	  	if (@side1 == @side2 && @side2 == @side3)
	  		return :equilateral
	  	elsif (@side1 == @side2 || @side2 == @side3 || @side1 == @side3)
	  		return :isosceles
	  	else
	  		return :scalene
	  	end
    raise TriangleError
  end

  def invalid?
	if (@side1 <=0 || @side2 <=0 || @side3 <=0)
		raise TriangleError
	elsif (@side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2)
		raise TriangleError
	end
	return true
  end 
end



class TriangleError < StandardError
 def message
 	puts "triangle invalid"
 end
end