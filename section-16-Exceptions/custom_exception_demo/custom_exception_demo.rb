class InvalidMarksError < StandardError
end
  def check_marks(marks)
      raise InvalidMarksError, "marks must be between 1-100" unless marks > 0 && marks <100

      puts "valid marks"
    end
    puts check_marks(85)
    begin
       check_marks(120)
       rescue  InvalidMarksError=>e
        puts e.message
       end
       begin
        check_marks(-5)
        rescue  InvalidMarksError=>e
         puts e.message
        end
