class SchoolYearsController < ApplicationController
  def def new
    @school_year = SchoolYear.new
  end
  def create
    @school_year = SchoolYear.new(school_year_params)
    if @school_year.save 
      flash[:notice] = 'school year successfuly added'
      redirect_to student_path(@school_year.id)
    
    else
      flash.now[:alert] = "#{@school_year.errors.full_messages} prevented this form from saving"
      render 'new'
    end
  end
  private
  def school_year_params
    params.require(:school_year).permit(:enrollment_id,:student_id,:year)
  end
end
