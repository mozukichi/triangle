require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  specify { expect(Triangle.check_triangle(2, 3, 4)).to eq Triangle::SCALENE }
  specify { expect(Triangle.check_triangle(2, 2, 1)).to eq Triangle::ISOSCELES }
  specify { expect(Triangle.check_triangle(3, 3, 4)).to eq Triangle::ISOSCELES }
  specify { expect(Triangle.check_triangle(3, 4, 4)).to eq Triangle::ISOSCELES }
  specify { expect(Triangle.check_triangle(1, 1, 1)).to eq Triangle::EQUILATERAL }
  specify { expect(Triangle.check_triangle(2, 2, 2)).to eq Triangle::EQUILATERAL }
  specify { expect(Triangle.check_triangle(1, 2, 3)).to eq Triangle::NOT_TRIANGLE }
  specify { expect(Triangle.check_triangle(1, 1, 2)).to eq Triangle::NOT_TRIANGLE }
  specify { expect(Triangle.check_triangle(2, 3, 5)).to eq Triangle::NOT_TRIANGLE }
end
