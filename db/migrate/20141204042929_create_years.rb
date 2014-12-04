class CreateYears < ActiveRecord::Migration
  def change
    create_table :years do |t|
      t.integer :year
      t.float :price

      t.timestamps
    end
  end
end
