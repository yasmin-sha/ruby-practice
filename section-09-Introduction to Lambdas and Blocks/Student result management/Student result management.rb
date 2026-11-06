marks=[60,34,80,90,47]
def student_marks(marks)
  marks.each do|marks|
    puts yield(marks)
end
end
student_marks(marks){|marks|marks>=50 ?  "pass" : "fail"}
