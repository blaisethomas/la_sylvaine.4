require 'rails_helper'

RSpec.describe "pupils/show", :type => :view do
  before(:each) do
    @pupil = assign(:pupil, Pupil.create!(
      :user => nil,
      :school => "School",
      :class_form => "Class Form",
      :telephone_number => "Telephone Number",
      :email => "Email",
      :emergency_contact_name => "Emergency Contact Name",
      :emergency_contact_relationship => "Emergency Contact Relationship",
      :emergency_contact_telephone => "Emergency Contact Telephone",
      :previous_dancing_schools => "Previous Dancing Schools",
      :most_recent_examination_taken => "Most Recent Examination Taken",
      :exam_result => "Exam Result",
      :medical_conditions => "MyText",
      :first_name => "First Name",
      :last_name => "Last Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/School/)
    expect(rendered).to match(/Class Form/)
    expect(rendered).to match(/Telephone Number/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Emergency Contact Name/)
    expect(rendered).to match(/Emergency Contact Relationship/)
    expect(rendered).to match(/Emergency Contact Telephone/)
    expect(rendered).to match(/Previous Dancing Schools/)
    expect(rendered).to match(/Most Recent Examination Taken/)
    expect(rendered).to match(/Exam Result/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
  end
end
