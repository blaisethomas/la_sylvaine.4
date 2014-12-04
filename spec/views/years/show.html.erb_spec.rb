require 'rails_helper'

RSpec.describe "years/show", :type => :view do
  before(:each) do
    @year = assign(:year, Year.create!(
      :year => 1,
      :price => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1.5/)
  end
end
