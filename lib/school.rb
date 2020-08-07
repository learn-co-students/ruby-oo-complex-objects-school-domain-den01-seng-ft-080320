# code here!
require 'pry'

class School

    attr_accessor :name, :roster, :student_name, :grade_number

    def initialize(student_name)
        @student_name = student_name
        @roster = {}
    end

    def add_student(student_name, grade_number)
        @student_name = student_name
        @grade_number = grade_number
        if @roster.include?(@grade_number) == false
            @roster[@grade_number] = []
        end
        @roster[@grade_number] << @student_name
    end

    def grade(grade_number)
        @roster[grade_number]
    end

    def sort
        @roster.each do |grade_number, student_name|
            student_name.sort!
        end
    end
  
end
