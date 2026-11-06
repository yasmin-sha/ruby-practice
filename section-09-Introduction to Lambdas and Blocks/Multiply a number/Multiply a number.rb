def calculate(num)
  yield(num)
  result=calculate(5) do|value|
    value *10
  end
end

  puts result
