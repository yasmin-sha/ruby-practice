module uni
  module CS
    class Student
      def learn
        "learning computer"
      end
    end
  end
end
s=Uni::CS::Student.new
puts s.learn
