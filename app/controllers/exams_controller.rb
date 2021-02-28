class ExamsController < ApplicationController
  def index
    @exams = Student.joins(:enrollments)
  end
  def new
    @exam = Exam.new
  end
  def create
    @exam = Exam.new(exams_params)
    if @exam.save 
      flash[:notice] = 'exam added successfuly'
      redirect_to exam_path(@exam.id)
    
    else
      flash.now[:alert] = "#{@exam.errors.full_messages} prevented this form from saving"
      render 'new'
    end
  end
  def show
      @exam = exam.find(params[:id])
  end
  private 
  def exams_params
    params.require(:exam).permit(:mark)
  end
end