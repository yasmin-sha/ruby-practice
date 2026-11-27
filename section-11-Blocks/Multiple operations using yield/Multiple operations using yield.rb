def calculation(a,b)
  yield(a,b)
end
puts calculation(3,5){|a,b|a+b}
puts calculation(3,5){|a,b|a-b}
puts calculation(3,5){|a,b|a/b}
puts calculation(3,5){|a,b|a**b}
