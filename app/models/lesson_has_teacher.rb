class LessonHasTeacher < ActiveRecord::Base
  belongs_to :lesson
  belongs_to :teacher
end
