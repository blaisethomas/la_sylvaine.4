class CreatePupils < ActiveRecord::Migration
  def change
    create_table :pupils do |t|
      t.references :user, index: true
      t.string :school
      t.string :class_form
      t.string :telephone_number
      t.string :email
      t.string :emergency_contact_name
      t.string :emergency_contact_relationship
      t.string :emergency_contact_telephone
      t.string :previous_dancing_schools
      t.string :most_recent_examination_taken
      t.string :exam_result
      t.text :medical_conditions
      t.string :first_name
      t.string :last_name
      t.date :birthday

      t.timestamps
    end
  end
end
