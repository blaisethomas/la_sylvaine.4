class Payment < ActiveRecord::Base
  belongs_to :user
  has_many :pupil_has_lessons
end
