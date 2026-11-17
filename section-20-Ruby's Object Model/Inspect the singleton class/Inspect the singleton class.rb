class Student
end
student1=Student.new 
def student1.introduce
  "i am a student"
end
p student1.singleton_class
p student1.singleton_class.instance_methods(false)
