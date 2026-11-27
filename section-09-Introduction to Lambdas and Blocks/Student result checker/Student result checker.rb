result=lambda do|marks|
if marks>=50
  puts "pass"
else
  "fail"
end
end
puts result.call(70)
  puts result.call(30)
