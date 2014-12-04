class Teacher < ActiveRecord::Base
  has_many :lesson_has_teachers
end
