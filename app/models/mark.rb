class Mark < ApplicationRecord
  belongs_to :student
  belongs_to :exam
  has_many :marks
  def self.student_class
    @all_students = Student.all
    @all_students.each do |student|
      counter =  student.attendances.count
      i=0
      while i < counter
        j=0
        while j< 3
          all_ids =  student.attendances[j].subject.exams.ids
          m=0
          while m< all_ids.size
            Mark.create(student_id:student.id,exam_id: all_ids[m])
            m+=1
          end
          j+=1
        end
        i+=1
      end
    end
  end
end
