require 'rails_helper'

RSpec.describe "locations/edit", :type => :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      :name => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :postcode => "MyString",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders the edit location form" do
    render

    assert_select "form[action=?][method=?]", location_path(@location), "post" do

      assert_select "input#location_name[name=?]", "location[name]"

      assert_select "input#location_address1[name=?]", "location[address1]"

      assert_select "input#location_address2[name=?]", "location[address2]"

      assert_select "input#location_postcode[name=?]", "location[postcode]"

      assert_select "input#location_latitude[name=?]", "location[latitude]"

      assert_select "input#location_longitude[name=?]", "location[longitude]"
    end
  end
end
