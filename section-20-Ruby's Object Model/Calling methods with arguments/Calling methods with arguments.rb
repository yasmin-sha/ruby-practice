class Calculate
  def add(a,b)
    a+b
  end
end
cal=Calculate.new
puts cal.send(:add,3,4)
