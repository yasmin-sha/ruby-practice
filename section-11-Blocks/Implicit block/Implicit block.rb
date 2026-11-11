def calculation(a, b)
  yield(a, b)
end

puts calculation(5, 5) { |x, y| x + y }
