require 'rails_helper'

RSpec.describe "locations/show", :type => :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      :name => "Name",
      :address1 => "Address1",
      :address2 => "Address2",
      :postcode => "Postcode",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address1/)
    expect(rendered).to match(/Address2/)
    expect(rendered).to match(/Postcode/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end
