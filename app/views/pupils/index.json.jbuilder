json.array!(@pupils) do |pupil|
  json.extract! pupil, :id, :user_id, :school, :class_form, :telephone_number, :email, :emergency_contact_name, :emergency_contact_relationship, :emergency_contact_telephone, :previous_dancing_schools, :most_recent_examination_taken, :exam_result, :medical_conditions, :first_name, :last_name, :birthday
  json.url pupil_url(pupil, format: :json)
end
