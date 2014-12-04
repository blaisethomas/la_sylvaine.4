class CreateLessonHasTeachers < ActiveRecord::Migration
  def change
    create_table :lesson_has_teachers do |t|
      t.references :lesson, index: true
      t.references :teacher, index: true

      t.timestamps
    end
  end
end
