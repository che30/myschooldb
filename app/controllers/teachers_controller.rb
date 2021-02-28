class TeachersController < ApplicationController
  def new
    @teacher= Teacher.new
  end
  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save 
      flash[:notice] = 'teacher added successfuly'
      redirect_to new_teacher_path
    else
      flash.now[:now] = "#{@teacher.errors.full_messages} prevented this form from saving"
      render 'new'
    end
    def show
      @teacher = Teacher.find(params[:id])
    end
  end
  private 
  def teacher_params
    params.require(:teacher).permit(:firstName,:lastName,:dob)
  end
end
