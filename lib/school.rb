# code here!

class School
    attr_accessor :roster
    attr_reader :name

    def initialize(name, roster={})
        @name = name
        @roster = roster
    end

    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        sorted_roster = {}
        roster.each do |grade, students|
            sorted_roster[grade] = students.sort
        end
        sorted_roster
    end
end