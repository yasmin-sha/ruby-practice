def add_many_num(*num)
  num.inject(0) do|sum,num|
    sum+num
  end
end
  puts add_many_num(3,5,7,8)
