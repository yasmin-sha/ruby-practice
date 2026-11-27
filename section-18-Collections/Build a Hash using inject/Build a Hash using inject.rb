num=[2,3,4,5,6,7]
result=num.inject({}) do|hash,num|
  hash.update(num=> num)
end
p result
