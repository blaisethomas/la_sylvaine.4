require 'rails_helper'

RSpec.describe "locations/new", :type => :view do
  before(:each) do
    assign(:location, Location.new(
      :name => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :postcode => "MyString",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders new location form" do
    render

    assert_select "form[action=?][method=?]", locations_path, "post" do

      assert_select "input#location_name[name=?]", "location[name]"

      assert_select "input#location_address1[name=?]", "location[address1]"

      assert_select "input#location_address2[name=?]", "location[address2]"

      assert_select "input#location_postcode[name=?]", "location[postcode]"

      assert_select "input#location_latitude[name=?]", "location[latitude]"

      assert_select "input#location_longitude[name=?]", "location[longitude]"
    end
  end
end
