class Student
  def introduce
    "i am a student"
  end
end
s=Student.new
s.send(:introduce)
