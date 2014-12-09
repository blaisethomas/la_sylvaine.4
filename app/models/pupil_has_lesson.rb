class PupilHasLesson < ActiveRecord::Base
  belongs_to :pupil
  belongs_to :lesson
  belongs_to :payment


  validate :no_dupe_lessons#, only: [:create]

private
  def no_dupe_lessons
    phl = PupilHasLesson.where(pupil_id: self.pupil_id, lesson_id: self.lesson_id).first
    if phl != nil && (self.new_record? || phl.id != self.id)
      errors.add(:pupil_id, " is already registered for this lesson!")
    end
  end
end


