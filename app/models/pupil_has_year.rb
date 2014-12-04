class PupilHasYear < ActiveRecord::Base
  belongs_to :year
  belongs_to :payment
  belongs_to :pupil
end
