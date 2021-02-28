class StudentsController < ApplicationController
  def new
    @student = Student.new
  end
  def create
    @student = Student.new(students_params)
    if @student.save 
      flash[:notice] = 'student added successfuly'
      redirect_to student_path(@student.id)
    
    else
      flash.now[:alert] = "#{@student.errors.full_messages} prevented this form from saving"
      render 'new'
    end
  end
  def show
      @school_year = SchoolYear.new
      @attendance =Attendance.new
      @subject = Subject.all.count
      @student = Student.find(params[:id])
  end
  private 
  def students_params
    params.require(:student).permit(:firstName,:lastName, :dob)
  end
end
