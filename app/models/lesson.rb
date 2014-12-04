class Lesson < ActiveRecord::Base
  belongs_to :location
  has_many :pupil_has_lessons
end
