class AttendancesController < ApplicationController
  def new
    @attendance = Attendance.new
  end
  def create
    @attendance = Attendance.new(attendance_params)
    if @attendance.save 
      flash[:notice] = 'attendace added successfuly'
      redirect_to new_attendance_path
    else
      flash.now[:now] = "#{@attendance.errors.full_messages} prevented this form from saving"
      render 'new'
    end
    def show
      @attendance = Attendance.find(params[:id])
    end
  end
  private 
  def attendance_params
    params.require(:attendance).permit(:student_id,:subject_id)
  end
end
