begin
  puts "Program started"

  number = 10 / 0

  puts "Calculation completed"

rescue ZeroDivisionError
  puts "An error occurred"

ensure
  puts "Cleanup is running"
end
