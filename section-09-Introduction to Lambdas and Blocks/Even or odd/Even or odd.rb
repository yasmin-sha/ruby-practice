check=lambda do |num|
  num.even? ? "even":"odd"
end
puts check.call(6)
