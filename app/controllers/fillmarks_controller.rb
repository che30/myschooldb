class FillmarksController < ApplicationController
  @@student_marks = nil
  def new
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
  def results_with_no_marks
    @test =[]
    current_marks_to_fill = Mark.pluck(:id)
      @tester =params.except(:controller,:action,:_method,:authenticity_token,:commit)
      current_marks_to_fill.each  do |mark_id|
        if @tester[:"#{mark_id}"]
          @test << mark_id
      end
      @test.each do |data|
        Mark.find(data.to_i).update_attribute(:grade,params[:"#{data}"])
      end
  end

end
 end
