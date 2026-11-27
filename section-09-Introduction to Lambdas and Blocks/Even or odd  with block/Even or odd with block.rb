def check_num(num)
  yield(num)
end
check_num(7){|n|n.even?  ? "even" : "odd"}
check_num(4){|n|n.even?  ? "even" : "odd"}
