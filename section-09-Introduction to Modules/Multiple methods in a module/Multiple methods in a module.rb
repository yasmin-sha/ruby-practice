module Calculate
  def add(a,b)
    a+b
  end
  def sub(a,b)
    a-b
  end
  def mul(a,b)
    a*b
  end
end
  class Mathoperation
  include Calculate
  end
  m=Mathoperation.new
  puts m.add(4,7)
  puts m.sub(34,36)
  puts  m.mul(2,6)
