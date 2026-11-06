marks=[30,50,60,70]
  def process_marks(marks)
    marks.each do |mark|
      result=yield(mark)

      puts "#{mark} #{result}
    end
  end
  process_marks(marks) do|mark|
    if mark>=50
      "pass"
    else
      "fail"
    end
  end
