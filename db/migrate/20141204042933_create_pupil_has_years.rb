class CreatePupilHasYears < ActiveRecord::Migration
  def change
    create_table :pupil_has_years do |t|
      t.references :year, index: true
      t.references :payment, index: true
      t.references :pupil, index: true
      t.float :adjusted_price

      t.timestamps
    end
  end
end
