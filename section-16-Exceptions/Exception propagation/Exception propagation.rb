def first
  second
end

def second
  20 / 0
end

begin
  first
rescue ZeroDivisionError
  puts "Error handled"
end

puts "Program finished"
