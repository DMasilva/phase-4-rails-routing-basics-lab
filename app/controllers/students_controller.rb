class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: (students)

  end

  def grades
  #   students = Student.all
  #  sorted = students.sort {|s,x| x.grade <=> s.grade}
  #  render json: (sorted)
   render json: Student.all.sort {|x,y| y.grade<=>x.grade}
  end
  def highest_grade
    render json: Student.all.sort {|x,y| y.grade<=>x.grade}.first
  end
end
