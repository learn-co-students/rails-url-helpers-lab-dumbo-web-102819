class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    @student = Student.find(params[:id])
    # if !@student.active #== false
      # @student.active = true
      # @student.save
      @student.active = !@student.active
      @student.save

      redirect_to show
    # end
  end

  private

    def set_student
    end
end
