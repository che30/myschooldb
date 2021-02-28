module ExamsHelper

  def names_for_exam
    @st = Student.order(firstName: 'ASC').all
    @st.each do |e|
      next if e.enrollments.blank? 
      if e.school_years.where(year: '2021-02-28').first &&
         e.school_years.where(year: '2021-02-28').first.enrollment_id ==1 
       return e
      end
    end
  end
end
