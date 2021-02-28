class SubjectsController < ApplicationController
  def new
    @subject = Subject.new
  end
  def create
    @subject = Subject.new(subject_params)
    if @subject.save 
      flash[:notice] = 'subject added successfuly'
      redirect_to new_subject_path
    else
      flash.now[:now] = "#{@subject.errors.full_messages} prevented this form from saving"
      render 'new'
    end
    def show
      @subject = Subject.find(params[:id])
    end
  end
  private 
  def subject_params
    params.require(:subject).permit(:subjectName,:coefficient,:teacher_id)
  end
end
