require 'rails_helper'

RSpec.describe "pupils/edit", :type => :view do
  before(:each) do
    @pupil = assign(:pupil, Pupil.create!(
      :user => nil,
      :school => "MyString",
      :class_form => "MyString",
      :telephone_number => "MyString",
      :email => "MyString",
      :emergency_contact_name => "MyString",
      :emergency_contact_relationship => "MyString",
      :emergency_contact_telephone => "MyString",
      :previous_dancing_schools => "MyString",
      :most_recent_examination_taken => "MyString",
      :exam_result => "MyString",
      :medical_conditions => "MyText",
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders the edit pupil form" do
    render

    assert_select "form[action=?][method=?]", pupil_path(@pupil), "post" do

      assert_select "input#pupil_user_id[name=?]", "pupil[user_id]"

      assert_select "input#pupil_school[name=?]", "pupil[school]"

      assert_select "input#pupil_class_form[name=?]", "pupil[class_form]"

      assert_select "input#pupil_telephone_number[name=?]", "pupil[telephone_number]"

      assert_select "input#pupil_email[name=?]", "pupil[email]"

      assert_select "input#pupil_emergency_contact_name[name=?]", "pupil[emergency_contact_name]"

      assert_select "input#pupil_emergency_contact_relationship[name=?]", "pupil[emergency_contact_relationship]"

      assert_select "input#pupil_emergency_contact_telephone[name=?]", "pupil[emergency_contact_telephone]"

      assert_select "input#pupil_previous_dancing_schools[name=?]", "pupil[previous_dancing_schools]"

      assert_select "input#pupil_most_recent_examination_taken[name=?]", "pupil[most_recent_examination_taken]"

      assert_select "input#pupil_exam_result[name=?]", "pupil[exam_result]"

      assert_select "textarea#pupil_medical_conditions[name=?]", "pupil[medical_conditions]"

      assert_select "input#pupil_first_name[name=?]", "pupil[first_name]"

      assert_select "input#pupil_last_name[name=?]", "pupil[last_name]"
    end
  end
end
