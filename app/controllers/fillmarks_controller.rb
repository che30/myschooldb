class FillmarksController < ApplicationController
  @@student_marks = nil
  def new
  end
  def display_results
    @display_result = @@student_marks
  end
  def create
    exam_id  = Exam.where(["Subject_id = ? and name = ?", params[:subject_code], params[:sequence]]).first.id
    @student_marks =Mark.where(exam_id: exam_id)
    if @student_marks
      render 'new'
      else
        redirect_to root_path
    end
  end
end
