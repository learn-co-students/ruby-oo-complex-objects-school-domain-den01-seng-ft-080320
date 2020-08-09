# code here!
require 'pry'
class School
    attr_reader :roster 

    def initialize(roster)
        @roster = {}
    end
     
     def add_student(student_name, student_grade) 
        if !@roster[student_grade]
            @roster[student_grade] = []       
            @roster[student_grade] << student_name
        else 
            @roster[student_grade] << student_name

            # binding.pry  
        end 
     end

     def grade(student_grade) 
        @roster[student_grade]
        # binding.pry
     end

     def sort
        names = @roster.keys
        names.map do |key|
            @roster[key] = @roster[key].sort!
        end
        @roster
        # binding.pry
     end
end

# binding.pry 