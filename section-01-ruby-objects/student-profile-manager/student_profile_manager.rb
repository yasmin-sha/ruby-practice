class Student
  def initialize(name, age, course, marks)
    @name = name
    @age = age
    @course = course
    @marks = marks
  end

  def display_info
    puts "Name: #{@name}"
    puts "Age: #{@age}"
    puts "Course: #{@course}"
    puts "Marks: #{@marks}"
  end
end

student1 = Student.new("Ali", 23, "Math", 70)
student2 = Student.new("Umar", 20, "Computer", 80)

students = [student1, student2]

students.each_with_index do |student, index|
  puts "Student #{index + 1}:"
  student.display_info
  puts "----------------"
end
