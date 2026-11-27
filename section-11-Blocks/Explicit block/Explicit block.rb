def calculation(a, b, &block)
  block.call(a, b)
end

puts calculation(5, 5) { |x, y| x + y }
