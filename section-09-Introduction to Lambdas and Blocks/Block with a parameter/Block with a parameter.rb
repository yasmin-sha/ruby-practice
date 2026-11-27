def show_num(num)
  yield(num)
end
show_num(7){|n| n*5}
