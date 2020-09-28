class Triangles

  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def type
    if (@side_a + @side_b <= @side_c) || (@side_a + @side_c <= @side_b) || (@side_b + @side_c <= @side_a)
      'not a triangle'
    elsif (@side_a === @side_b) && (@side_b === @side_c)
      'equilateral'
    elsif (@side_a === @side_b) || (@side_b === @side_c) || (@side_a === @side_c)
      'isosceles'
    else
      'scalene'
    end
  end
end