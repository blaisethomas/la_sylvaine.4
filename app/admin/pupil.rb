ActiveAdmin.register Pupil do
  permit_params :school, :class_form, :telephone_number, :email, :emergency_contact_name, :emergency_contact_relationship, :emergency_contact_telephone, :previous_dancing_schools, :most_recent_examination_taken, :exam_result, :medical_conditions, :first_name, :last_name, :birthday


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
