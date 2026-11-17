num=[2,5,7,8,"7"]
result=num.any? do|element|
  element.class == String
end
puts result
