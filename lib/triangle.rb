class Triangle
  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3    
  end

  def kind
    type = ""
    if @side1 == 0
    #if @side1 + @side2 < @side3 || @side1 <= 0 || @side2 <= 0 || @side3 <= 0
       begin
         raise TriangleError
       rescue TriangleError => error
        puts error.message
      end
    else
      if @side1 == @side2 && @side1 == @side3
        type = :equilateral
     elsif (@side1 == @side2 && @side1 != @side3) || (@side1 != @side2 && @side2 == @side3) || (@side1 != @side2 && @side1 == @side3)
        type = :isosceles
     elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
        type = :scalene
      end
    end
  end

   class TriangleError < StandardError
     def message
        "sum of sides1 and sides2 must be greater than side3. \n
         Each side must be greater than zero."
      end
    end

end
