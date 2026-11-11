File.open("student.txt","w") do |file|
  file.puts "ali"
  file.puts "umar"
end

content=File.read("student.txt")
puts content
student=File.readlines("student.txt").map(&:chomp)
puts "student name as arry"
p student
File.open("student.txt","a") do|file|
  file.puts "ys"
end
student=File.readlines("student.txt").map(&:chomp)
puts "updated"
p student
