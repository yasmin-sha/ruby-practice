# -------------------------------------------------------------------
# MODULES: Formatter Module
# -------------------------------------------------------------------

module Formatter
    def self.format_title(title)
      cleaned=title.to_s.strip.gsub(/\s+/ ,' ').upcase
      header="-"*(cleaned.length)
       "#{header}\n #{cleaned}\n  #{header}"
    end
end

    # -------------------------------------------------------------------
# CLASSES: Student Class
# -------------------------------------------------------------------

      class Student
        attr_accessor :name, :scores
  def initialize(name,scores=[])
    @name=name.strip.capitalize
    @scores=scores
  end
  def add_score(mark)
    
    if mark.between?(0,100)
      @scores<<mark
      puts "scores added:  #{@scores}"
    else
      puts "enter a score between 0 & 100"
    end
end
  def average_score
    return 0 if @scores.empty?
    (@scores.sum.to_f/@scores.length).round(2)
  end

def to_s
    "student: #{@name} | scores:#{@scores}| average:#{average_score}"
end
end
  
 # -------------------------------------------------------------------
# MAIN APPLICATION: GradebookApp
# -------------------------------------------------------------------

class GradebookApp
    FILE_PATH = "students_data.txt"
    def initialize
        @students={}
    end
        def process_students_with_block
            check_pass =lambda{|average|average >=60 ? "pass" : "fail"}
            @students.each do|name,student|
                status=check_pass.call(student.average_score)
                yield(name,status)
            end
        end
    
    def save_data
         File.open(FILE_PATH,"w") do |f|
             @students.each do |name,student|
                 f.puts "#{name},#{student.scores.join(',')}"
             end
        end
    end
    def load_data
        if File.exist?(FILE_PATH)
            File.readlines(FILE_PATH).each do|line|
                parts=line.split(",")
                name=parts[0]
                scores=parts[1..].map(&:to_i)
                @students[name]=Student.new(name,scores)
            end
        end
    end
    def run
        load_data
        loop do
            puts  "\n" + Formatter.format_title("Student Gradebook & Data Logger" )
            
            puts "1. view all data"
            puts "2. add student"
            puts "3. process student : pass/fail"
            puts "4. save & exit"
            puts "enter your choice(1-4):"

            choice=gets.chomp.to_i
            case choice
            when 1
                if @students.empty?
                    puts"No student found"
                else
                    puts "all student"
                    @students.each do|name,student|
                        puts student
                    end
                    puts "-----------------------\n"
                end
            when 2
                print "\n enter student name:"
                $stdout.flush
                name =gets.strip.chomp.capitalize
                print "enter mark(0-100): "
                $stdout.flush
                mark=gets.strip.chomp.to_i
                if @students.key?(name)
                    @students[name].add_score(mark)
                else
                    new_student=Student.new(name)
                    new_student.add_score(mark)
                    @students[name]=new_student
                end
                puts "students #{name} added.\n"
            when 3
                if @students.empty?
                    puts "no students found"
                else
                    process_students_with_block do|name,status|
                        puts "students:#{name} | status: #{status}"
                    end
                    puts "-----------------------\n"
                end
            when 4
                save_data
                puts "Goodbye"
                break
            else
                puts "\n enter number between 1-4"
            end
        end
    end
end
app=GradebookApp.new
app.run





