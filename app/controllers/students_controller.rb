class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: (students)

  end

  def grades
    students = Student.all
   sorted = students.sort {|s,x| x.grade <=> s.grade}
   render json: (sorted)
  end
end
