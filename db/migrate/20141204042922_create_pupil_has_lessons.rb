class CreatePupilHasLessons < ActiveRecord::Migration
  def change
    create_table :pupil_has_lessons do |t|
      t.references :pupil, index: true
      t.references :lesson, index: true
      t.references :payment, index: true
      t.float :adjusted_price

      t.timestamps
    end
  end
end
