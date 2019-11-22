class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  #get /students
  def index

    #model
    @students = Student.all
  end

  #get /student/:id
  def show

    # model
    @student = Student.find(params[:id])
  end

  def activate_student
    @student = Student.find(params[:id])
    if(@student.active == false)
      @student.active = true
      @student.save
    else
      @student.active = false
      @student.save
    end
    redirect_to show
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end