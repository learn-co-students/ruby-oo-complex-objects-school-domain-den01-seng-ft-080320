
class School
    attr_accessor :name, :roster
    def initialize  name
        @name = name
        @roster = Hash.new
    end
    
    def add_student name, grade
        roster[grade] ||= []
        roster[grade] << name
    end

    def grade grade
        roster[grade]
    end

    def sort
        sorted_roster = Hash.new
         roster.each do |grade, name|
            sorted_roster[grade] = name.sort
         end
         sorted_roster
    end
    
end
