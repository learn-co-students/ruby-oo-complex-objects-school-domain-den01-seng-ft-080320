
class School
    attr_accessor :name, :roster
    def initialize  name
        @name = name
        @roster = Hash.new
    end
    
    def add_student name, grade
        @roster[grade] = name 
    end
end