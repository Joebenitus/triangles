require('rspec')
require('triangles')

describe('#Triangles') do
  describe('.type') do
    it('determines if triangle is equilateral') do
      triangle = Triangles.new(5, 5, 5)
      expect(triangle.type).to(eq('equilateral'))
    end

    it('determines if triangle is isosceles') do
      triangle = Triangles.new(5, 5, 6)
      expect(triangle.type).to(eq('isosceles'))
    end

    it('determines if triangle is scalene') do
      triangle = Triangles.new(4, 5, 6)
      expect(triangle.type).to(eq('scalene'))
    end

    it('determines if the given arguments make a triangle') do
      triangle = Triangles.new(2, 2, 6)
      expect(triangle.type).to(eq('not a triangle'))
    end
  end
end