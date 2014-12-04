class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.references :location, index: true
      t.float :price
      t.string :genre
      t.string :grade

      t.timestamps
    end
  end
end
