def greet
  block_given?
  if block_given? 
    yield
  else
    "no block provided"
  end
end
puts greet
puts greet{"hello"}
