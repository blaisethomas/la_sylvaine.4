class PupilHasYear < ActiveRecord::Base
  belongs_to :year
  belongs_to :payment
  belongs_to :pupil

  validate :no_dupe_registrations#, only: [:create]

private
  def no_dupe_registrations
    phs = PupilHasYear.where(pupil_id: self.pupil_id, year_id: self.year_id).first
    if phs != nil && (self.new_record? || phs.id != self.id)
      errors.add(:pupil_id, " is already registered for this year!")
    end
  end
end
