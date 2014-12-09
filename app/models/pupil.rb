class Pupil < ActiveRecord::Base
  belongs_to :user
  has_many :pupil_has_lessons

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
