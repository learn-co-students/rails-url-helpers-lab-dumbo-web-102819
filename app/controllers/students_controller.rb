class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def activate
    puts "Params: #{params}"
    student = Student.find(params[:id])
    student.active = !student.active
    puts "Student: #{student.active}" #forgot to save

    student.save

    redirect_to student_path(student)
  end

  def show
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end