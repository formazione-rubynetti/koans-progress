# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def equilateral?(a, b, c)
  a == b && b == c
end

def isosceles?(a, b, c)
  a == b || b == c || a == c
end

def impossible?(a, b, c)
  return true if [a, b, c].min <=0
  return true if a + b <= c
  return true if a + c <= b
  return true if c + b <= a
  return false
end

def triangle(a, b, c)
  raise TriangleError, "Questo triangolo non è possibile" if impossible?(a, b, c)
  return :equilateral if equilateral?(a, b, c)
  return :isosceles if isosceles?(a, b, c)
  return :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
