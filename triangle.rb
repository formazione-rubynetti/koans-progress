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

def triangle(a, b, c)
  return :equilateral if equilateral?(a, b, c)
  return :isosceles if isosceles?(a, b, c)
  return :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
