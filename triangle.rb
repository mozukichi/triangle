class Triangle
  EQUILATERAL = 0
  ISOSCELES = 1
  SCALENE = 2
  NOT_TRIANGLE = 3

  def self.check_triangle(e1, e2, e3)
    if e1 < e2 + e3 && e2 < e1 + e3 && e3 < e1 + e2 then
      if e1 == e2 && e2 == e3 then
        EQUILATERAL
      elsif e1 == e2 || e2 == e3 || e1 == e3 then
        ISOSCELES
      else
        SCALENE
      end
    else
      NOT_TRIANGLE
    end
  end
end

if $0 == __FILE__ then
  case Triangle.check_triangle($*[0].to_i, $*[1].to_i, $*[2].to_i)
  when Triangle::EQUILATERAL then
    puts "正三角形ですね！"
  when Triangle::ISOSCELES then
    puts "二等辺三角形ですね！"
  when Triangle::SCALENE then
    puts "不等辺三角形ですね！"
  when Triangle::NOT_TRIANGLE then
    puts "三角形じゃないです＞＜"
  end
end
