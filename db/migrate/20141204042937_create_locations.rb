class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :postcode
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
