require 'rails_helper'

RSpec.describe "pupils/index", :type => :view do
  before(:each) do
    assign(:pupils, [
      Pupil.create!(
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
      ),
      Pupil.create!(
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
      )
    ])
  end

  it "renders a list of pupils" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "School".to_s, :count => 2
    assert_select "tr>td", :text => "Class Form".to_s, :count => 2
    assert_select "tr>td", :text => "Telephone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Emergency Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => "Emergency Contact Relationship".to_s, :count => 2
    assert_select "tr>td", :text => "Emergency Contact Telephone".to_s, :count => 2
    assert_select "tr>td", :text => "Previous Dancing Schools".to_s, :count => 2
    assert_select "tr>td", :text => "Most Recent Examination Taken".to_s, :count => 2
    assert_select "tr>td", :text => "Exam Result".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
  end
end
