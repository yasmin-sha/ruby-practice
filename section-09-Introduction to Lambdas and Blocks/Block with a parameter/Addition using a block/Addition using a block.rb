def calculate(a,b)
  yield(a,b)
end
calculate(4,7) do |a,b|
  a+b
end
