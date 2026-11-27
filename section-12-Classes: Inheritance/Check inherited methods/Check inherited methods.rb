class Person
        def introduce
             "hi,i am a Person"
        end
    end
    class Student < Person
        def study
            "i am studying"
        end
    end
        s=Student.new
        puts s.introduce
        puts s.study
