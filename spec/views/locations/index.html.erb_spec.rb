require 'rails_helper'

RSpec.describe "locations/index", :type => :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        :name => "Name",
        :address1 => "Address1",
        :address2 => "Address2",
        :postcode => "Postcode",
        :latitude => 1.5,
        :longitude => 1.5
      ),
      Location.create!(
        :name => "Name",
        :address1 => "Address1",
        :address2 => "Address2",
        :postcode => "Postcode",
        :latitude => 1.5,
        :longitude => 1.5
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "Postcode".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
