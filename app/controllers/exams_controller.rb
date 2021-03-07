class ExamsController < ApplicationController
  def new
    @exam = Exam.new
  end
  def create
    @exams = Exam.new(exam_params)
    if @exams.save
      flash[:notice] = 'Exam year successfuly added'
      redirect_to new_exam_path
    else
      flash.now[:alert] = "#{@exams.errors.full_messages} prevented this form from saving"
      render 'new'
    end
  end
  def exam_params
  params.require(:exam).permit(:enrollment_id,:subject_id,:name)
  end
end
