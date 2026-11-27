class Student
end
s=Student.new
name="ali"
age=23
marks=[70,80,90]
details={course:"Ruby"}
puts s.is_a?(Student)
puts name.is_a?(String)
puts age.is_a?(Integer)
puts marks.is_a?(Array)
puts details.is_a?(Hash)
