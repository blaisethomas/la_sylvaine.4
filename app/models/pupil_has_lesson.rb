class PupilHasLesson < ActiveRecord::Base
  belongs_to :pupil
  belongs_to :lesson
  belongs_to :payment
end
